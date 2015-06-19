.class public Lcom/twidroid/TwidroidClient;
.super Landroid/support/v7/app/ActionBarActivity;
.source "SourceFile"

# interfaces
.implements Lcom/twidroid/fragments/base/g;
.implements Lcom/twidroid/net/c/a/f;
.implements Lcom/viewpagerindicator/b;


# static fields
.field public static final A:Ljava/lang/String; = "tweet_id"

.field public static final B:Ljava/lang/String; = "user_id"

.field public static final C:Ljava/lang/String; = "single_tweet"

.field public static final D:Ljava/lang/String; = "profile"

.field static E:Z = false

.field public static final M:Ljava/lang/String; = "com.levelup.touiteur.extra.urlbypass"

.field private static final N:J = 0x927c0L

.field private static final O:I = 0x52455452

.field private static final P:I = 0x474f544f

.field private static final R:Ljava/lang/String; = "TwidroidClient"

.field private static aA:Landroid/app/Instrumentation; = null

.field private static aB:[Landroid/app/Instrumentation$ActivityMonitor; = null

.field private static aC:Z = false

.field private static final ao:I = 0x1

.field private static final ap:I = 0x2

.field private static final ay:Z = true

.field private static final az:[Landroid/content/IntentFilter; = null

.field public static final b:Ljava/lang/String; = "ACTION_APP_CLOSED"

.field public static c:Z = false

.field static final d:I = 0x2b4

.field public static final e:Ljava/lang/String; = "ubersocial.broadcast.uberbar.accountslistmodified"

.field public static final f:Ljava/lang/String; = "ubersocial.broadcast.uberbar.configchanged"

.field public static final g:Ljava/lang/String; = "ubersocial.broadcast.updateuser"

.field public static final h:Ljava/lang/String; = "ubersocial.broadcast.uberbar.adduser"

.field public static final i:Ljava/lang/String; = "ubersocial.broadcast.uberbar.addlist"

.field public static final j:Ljava/lang/String; = "ubersocial.broadcast.uberbar.removelist"

.field public static k:Ljava/lang/String; = null

.field public static l:Ljava/lang/String; = null

.field public static final m:J = 0x3cL

.field public static final n:Ljava/lang/String; = "ubersocial.broadcast.uberbar.viewchannel"

.field public static final o:Ljava/lang/String; = "ubersocial.broadcast.uberbar.viewlist"

.field public static final p:Ljava/lang/String; = "ubersocial.broadcast.account.changed"

.field public static final q:I = 0x54

.field public static final r:I = 0x3

.field public static final s:I = 0x7

.field public static final v:I = 0x64

.field public static final w:I = 0xc8

.field public static final x:I = 0xc9

.field public static final y:I = 0xca

.field public static final z:Ljava/lang/String; = "open_from_notification"


# instance fields
.field F:Z

.field public G:Landroid/os/Handler;

.field protected H:Landroid/widget/ListView;

.field protected I:Landroid/view/View;

.field J:Lcom/admarvel/android/ads/AdMarvelView;

.field K:Ljava/util/HashMap;

.field L:Ljava/util/TimerTask;

.field private final Q:Lcom/twidroid/TwidroidClient$TabSwitchReceiver;

.field private final S:I

.field private final T:I

.field private U:Lcom/twidroid/b/a/b;

.field private V:Lcom/twidroid/UberSocialApplication;

.field private W:Lcom/twidroid/d/v;

.field private X:Lcom/twidroid/model/twitter/c;

.field private Y:Lcom/twidroid/billing/BillingService;

.field private Z:Lcom/twidroid/w;

.field private aa:Lcom/twidroid/ui/c/g;

.field private ab:I

.field private ac:Landroid/support/v4/view/ViewPager;

.field private ad:Lcom/twidroid/ui/widgets/AccountSpinner;

.field private ae:Landroid/content/res/Resources;

.field private af:Z

.field private ag:Z

.field private ah:Landroid/support/v4/widget/DrawerLayout;

.field private ai:Lcom/twidroid/ui/a/af;

.field private aj:Landroid/database/sqlite/SQLiteDatabase;

.field private ak:Z

.field private al:Lcom/twidroid/ui/c/h;

.field private am:Lcom/ubermedia/a/a;

.field private an:Lcom/twidroid/net/b/f;

.field private aq:Lcom/ubermedia/b/g;

.field private ar:Lcom/ubermedia/b/f;

.field private as:Z

.field private at:Z

.field private au:Ljava/util/Timer;

.field private av:Z

.field private aw:Landroid/content/BroadcastReceiver;

.field private ax:Landroid/content/BroadcastReceiver;

.field t:I

.field u:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    sput-boolean v5, Lcom/twidroid/TwidroidClient;->c:Z

    const-string v0, "ubersocial.broadcast.uberbar.newthemeloaded"

    sput-object v0, Lcom/twidroid/TwidroidClient;->k:Ljava/lang/String;

    const-string v0, "twidroid.broadcast.timeline"

    sput-object v0, Lcom/twidroid/TwidroidClient;->l:Ljava/lang/String;

    sput-boolean v6, Lcom/twidroid/TwidroidClient;->E:Z

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v2, "android.intent.category.APP_MARKET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.google.android.finsky.NAVIGATIONAL_SUGGESTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v2, "market"

    const-string v3, "search"

    invoke-static {v1, v2, v3}, Lcom/twidroid/TwidroidClient;->a(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "market"

    const-string v3, "details"

    invoke-static {v1, v2, v3}, Lcom/twidroid/TwidroidClient;->a(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "http"

    const-string v3, "market.android.com"

    const-string v4, "/"

    invoke-static {v1, v2, v3, v4, v6}, Lcom/twidroid/TwidroidClient;->a(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/IntentFilter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "http"

    const-string v3, "market.android.com"

    const-string v4, "/"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/twidroid/TwidroidClient;->a(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/IntentFilter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "https"

    const-string v3, "market.android.com"

    const-string v4, "/"

    invoke-static {v1, v2, v3, v4, v6}, Lcom/twidroid/TwidroidClient;->a(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/IntentFilter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "https"

    const-string v3, "market.android.com"

    const-string v4, "/"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/twidroid/TwidroidClient;->a(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/IntentFilter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v2, "http"

    const-string v3, "play.google.com"

    const-string v4, "/store"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/twidroid/TwidroidClient;->a(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/IntentFilter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "https"

    const-string v3, "play.google.com"

    const-string v4, "/store"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/twidroid/TwidroidClient;->a(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/IntentFilter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "http"

    const-string v3, "play.google.com"

    const-string v4, "/redeem"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/twidroid/TwidroidClient;->a(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/IntentFilter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "https"

    const-string v3, "play.google.com"

    const-string v4, "/redeem"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/twidroid/TwidroidClient;->a(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/IntentFilter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.android.vending.billing.PURCHASE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v6, [Landroid/content/IntentFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    sput-object v0, Lcom/twidroid/TwidroidClient;->az:[Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/16 v2, 0xa

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    new-instance v0, Lcom/twidroid/TwidroidClient$TabSwitchReceiver;

    invoke-direct {v0, p0}, Lcom/twidroid/TwidroidClient$TabSwitchReceiver;-><init>(Lcom/twidroid/TwidroidClient;)V

    iput-object v0, p0, Lcom/twidroid/TwidroidClient;->Q:Lcom/twidroid/TwidroidClient$TabSwitchReceiver;

    iput v2, p0, Lcom/twidroid/TwidroidClient;->t:I

    iput v2, p0, Lcom/twidroid/TwidroidClient;->u:I

    const v0, 0x1d97c

    iput v0, p0, Lcom/twidroid/TwidroidClient;->S:I

    const v0, 0x1d97e

    iput v0, p0, Lcom/twidroid/TwidroidClient;->T:I

    iput-boolean v1, p0, Lcom/twidroid/TwidroidClient;->F:Z

    iput-boolean v1, p0, Lcom/twidroid/TwidroidClient;->af:Z

    iput-boolean v1, p0, Lcom/twidroid/TwidroidClient;->ag:Z

    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/TwidroidClient;->aj:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twidroid/TwidroidClient;->J:Lcom/admarvel/android/ads/AdMarvelView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twidroid/TwidroidClient;->at:Z

    new-instance v0, Lcom/twidroid/TwidroidClient$22;

    invoke-direct {v0, p0}, Lcom/twidroid/TwidroidClient$22;-><init>(Lcom/twidroid/TwidroidClient;)V

    iput-object v0, p0, Lcom/twidroid/TwidroidClient;->aw:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/twidroid/TwidroidClient$30;

    invoke-direct {v0, p0}, Lcom/twidroid/TwidroidClient$30;-><init>(Lcom/twidroid/TwidroidClient;)V

    iput-object v0, p0, Lcom/twidroid/TwidroidClient;->ax:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private A()V
    .registers 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->b(Z)V

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->f(Z)V

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->d(Z)V

    return-void
.end method

.method private B()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->y()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twidroid/TwidroidClient;->av:Z

    iget-boolean v0, p0, Lcom/twidroid/TwidroidClient;->av:Z

    if-eqz v0, :cond_7e

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030044

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/TwidroidClient;->I:Landroid/view/View;

    :goto_1e
    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03007e

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/widgets/AccountSpinner;

    iput-object v0, p0, Lcom/twidroid/TwidroidClient;->ad:Lcom/twidroid/ui/widgets/AccountSpinner;

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ad:Lcom/twidroid/ui/widgets/AccountSpinner;

    invoke-virtual {v0}, Lcom/twidroid/ui/widgets/AccountSpinner;->a()V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ad:Lcom/twidroid/ui/widgets/AccountSpinner;

    new-instance v1, Lcom/twidroid/TwidroidClient$35;

    invoke-direct {v1, p0}, Lcom/twidroid/TwidroidClient$35;-><init>(Lcom/twidroid/TwidroidClient;)V

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/AccountSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->ad:Lcom/twidroid/ui/widgets/AccountSpinner;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->a(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->e(Z)V

    const v0, 0x7f03006c

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->setContentView(I)V

    const v0, 0x7f09016f

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/twidroid/TwidroidClient;->ah:Landroid/support/v4/widget/DrawerLayout;

    const v0, 0x7f090171

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/twidroid/TwidroidClient;->H:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->H:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    const v0, 0x7f090170

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->I:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_7e
    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030045

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/TwidroidClient;->I:Landroid/view/View;

    goto :goto_1e
.end method

.method private C()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->e()Lcom/twidroid/model/twitter/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->d()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->bC()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {}, Lcom/twidroid/net/n;->a()Lcom/twidroid/net/n;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/twidroid/TwidroidClient$36;

    invoke-direct {v2, p0}, Lcom/twidroid/TwidroidClient$36;-><init>(Lcom/twidroid/TwidroidClient;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/twidroid/net/n;->a(Ljava/lang/Thread;)V

    :cond_29
    return-void
.end method

.method private D()V
    .registers 4

    const v2, 0x7f0900ec

    invoke-virtual {p0, v2}, Lcom/twidroid/TwidroidClient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/twidroid/fragments/a;

    invoke-direct {v1}, Lcom/twidroid/fragments/a;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_1c
    return-void
.end method

.method private E()V
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/twidroid/UberSocialApplication;

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-static {v0, p0, v1, v2}, Lcom/twidroid/d/t;->a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Z)V

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->f(Z)V

    const v0, 0x7f0900c5

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_55

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;

    move-result-object v1

    instance-of v1, v1, Lcom/twidroid/ui/themes/a;

    if-nez v1, :cond_84

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/d/v;->bb()Z

    move-result v1

    if-eqz v1, :cond_84

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v1}, Lcom/twidroid/d/v;->bc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_55
    :goto_55
    const v0, 0x7f0900ef

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6d

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :cond_6d
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bright"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ad:Lcom/twidroid/ui/widgets/AccountSpinner;

    const v1, 0x7f020197

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/AccountSpinner;->setBackgroundResource(I)V

    :goto_83
    return-void

    :cond_84
    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v1}, Lcom/twidroid/d/v;->bv()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/twidroid/ui/themes/r;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->v()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_55

    :cond_a6
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ad:Lcom/twidroid/ui/widgets/AccountSpinner;

    const v1, 0x7f020198

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/AccountSpinner;->setBackgroundResource(I)V

    goto :goto_83
.end method

.method private F()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ah:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->H:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ah:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->H:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    :cond_11
    return-void
.end method

.method private G()V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ai:Lcom/twidroid/ui/a/af;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ai:Lcom/twidroid/ui/a/af;

    invoke-virtual {v0}, Lcom/twidroid/ui/a/af;->getCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_27

    iget-object v2, p0, Lcom/twidroid/TwidroidClient;->ai:Lcom/twidroid/ui/a/af;

    invoke-virtual {v2, v0}, Lcom/twidroid/ui/a/af;->a(I)Lcom/twidroid/ui/c/h;

    move-result-object v2

    iget-object v3, p0, Lcom/twidroid/TwidroidClient;->al:Lcom/twidroid/ui/c/h;

    if-ne v2, v3, :cond_28

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->ac:Landroid/support/v4/view/ViewPager;

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ac:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/twidroid/TwidroidClient;->g(I)V

    :cond_27
    return-void

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method private H()Lcom/twidroid/model/twitter/c;
    .registers 3

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_18

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ad:Lcom/twidroid/ui/widgets/AccountSpinner;

    invoke-virtual {v0}, Lcom/twidroid/ui/widgets/AccountSpinner;->getSelectedAccount()Lcom/twidroid/model/twitter/c;

    move-result-object v0

    :goto_17
    return-object v0

    :cond_18
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->e()Lcom/twidroid/model/twitter/c;

    move-result-object v0

    goto :goto_17
.end method

.method private I()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->d()V

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->h()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twidroid/TwidroidClient;->ak:Z

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->finish()V

    return-void
.end method

.method private J()Lcom/twidroid/fragments/a/c;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ac:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/a/c;

    return-object v0
.end method

.method private K()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twidroid/TwidroidClient;->h(Z)V

    return-void
.end method

.method private L()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_11
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_24
    return v0

    :cond_25
    move v0, v1

    goto :goto_24
.end method

.method private M()V
    .registers 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "Twidroyd.Tabswitch"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "twidroid.broadcast"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "ubersocial.broadcast.updateuser"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "ubersocial.broadcast.uberbar.accountslistmodified"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "ubersocial.broadcast.uberbar.configchanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "ubersocial.broadcast.uberbar.adduser"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "ubersocial.broadcast.uberbar.addlist"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "ubersocial.broadcast.uberbar.removelist"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "ubersocial.broadcast.uberbar.viewchannel"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "ubersocial.broadcast.uberbar.viewlist"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/twidroid/TwidroidClient;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->Q:Lcom/twidroid/TwidroidClient$TabSwitchReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/twidroid/TwidroidClient;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private N()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->Q:Lcom/twidroid/TwidroidClient$TabSwitchReceiver;

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private O()V
    .registers 7

    new-instance v0, Lcom/twidroid/TwidroidClient$5;

    invoke-direct {v0, p0}, Lcom/twidroid/TwidroidClient$5;-><init>(Lcom/twidroid/TwidroidClient;)V

    iput-object v0, p0, Lcom/twidroid/TwidroidClient;->am:Lcom/ubermedia/a/a;

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->am:Lcom/ubermedia/a/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ubermedia/a/a;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ai:Lcom/twidroid/ui/a/af;

    invoke-static {p0}, Lcom/twidroid/d/v;->q(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lcom/twidroid/d/v;->p(Landroid/content/Context;)I

    move-result v2

    invoke-static {p0}, Lcom/twidroid/d/v;->m(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v4}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twidroid/b/a/b;->D()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {p0}, Lcom/twidroid/d/v;->n(Landroid/content/Context;)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/twidroid/ui/a/af;->a(IIIII)V

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->J()Lcom/twidroid/fragments/a/c;

    move-result-object v0

    if-eqz v0, :cond_4f

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->J()Lcom/twidroid/fragments/a/c;

    move-result-object v0

    invoke-static {p0}, Lcom/twidroid/d/v;->q(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lcom/twidroid/d/v;->p(Landroid/content/Context;)I

    move-result v2

    invoke-static {p0}, Lcom/twidroid/d/v;->m(Landroid/content/Context;)I

    move-result v3

    invoke-static {p0}, Lcom/twidroid/d/v;->n(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twidroid/fragments/a/c;->a(IIII)V

    :cond_4f
    const v0, 0x7f0901b8

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-virtual {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->c()V

    return-void
.end method

.method private P()V
    .registers 6

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3c

    sub-long/2addr v1, v3

    iget-object v3, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v3}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v3

    iget-object v4, p0, Lcom/twidroid/TwidroidClient;->aj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v4}, Lcom/twidroid/d/v;->e(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_3e

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/d/v;->aF()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/twidroid/b/a/b;->d(I)V

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/TwidroidClient;->aj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/twidroid/d/v;->b(Landroid/database/sqlite/SQLiteDatabase;J)V

    :cond_3e
    return-void
.end method

.method private Q()V
    .registers 4

    const/4 v2, 0x0

    new-instance v0, Lcom/twidroid/model/twitter/c;

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->aj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/twidroid/model/twitter/c;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/b/a/b;->h()V

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->d()Z

    move-result v0

    if-nez v0, :cond_32

    new-instance v0, Lcom/twidroid/model/twitter/c;

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->aj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/twidroid/model/twitter/c;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twidroid/UberSocialApplication;->a(Z)V

    :goto_31
    return-void

    :cond_32
    sput-boolean v2, Lcom/twidroid/TwidroidClient;->E:Z

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0, v2}, Lcom/twidroid/UberSocialApplication;->a(Z)V

    goto :goto_31
.end method

.method private R()V
    .registers 3

    const-string v0, "TwidroidClient"

    const-string v1, "Advertisment start"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->aV()Z

    move-result v0

    if-nez v0, :cond_27

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->J:Lcom/admarvel/android/ads/AdMarvelView;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->aV()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->U()V

    :cond_27
    return-void
.end method

.method private S()V
    .registers 3

    const-string v0, "TwidroidClient"

    const-string v1, "Advertisment stop"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->aV()Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->au:Ljava/util/Timer;

    if-eqz v0, :cond_20

    :try_start_18
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->au:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twidroid/TwidroidClient;->au:Ljava/util/Timer;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_20} :catch_21

    :cond_20
    :goto_20
    return-void

    :catch_21
    move-exception v0

    goto :goto_20
.end method

.method private T()V
    .registers 5

    const/4 v3, -0x1

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/twidroid/UberSocialApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "level"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "scale"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->K:Ljava/util/HashMap;

    const-string v2, "bat"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private U()V
    .registers 7

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->J:Lcom/admarvel/android/ads/AdMarvelView;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->au:Ljava/util/Timer;

    if-eqz v0, :cond_11

    :try_start_9
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->au:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twidroid/TwidroidClient;->au:Ljava/util/Timer;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_2f

    :cond_11
    :goto_11
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/twidroid/TwidroidClient;->au:Ljava/util/Timer;

    new-instance v0, Lcom/twidroid/TwidroidClient$11;

    invoke-direct {v0, p0}, Lcom/twidroid/TwidroidClient$11;-><init>(Lcom/twidroid/TwidroidClient;)V

    iput-object v0, p0, Lcom/twidroid/TwidroidClient;->L:Ljava/util/TimerTask;

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->au:Ljava/util/Timer;

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->L:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v4}, Lcom/twidroid/d/v;->bF()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_4

    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method private V()V
    .registers 3

    new-instance v0, Lcom/twidroid/TwidroidClient$13;

    invoke-direct {v0, p0}, Lcom/twidroid/TwidroidClient$13;-><init>(Lcom/twidroid/TwidroidClient;)V

    iput-object v0, p0, Lcom/twidroid/TwidroidClient;->am:Lcom/ubermedia/a/a;

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->am:Lcom/ubermedia/a/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ubermedia/a/a;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    return-void
.end method

.method private W()Z
    .registers 3

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private X()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->ak()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->G:Landroid/os/Handler;

    new-instance v1, Lcom/twidroid/TwidroidClient$28;

    invoke-direct {v1, p0}, Lcom/twidroid/TwidroidClient$28;-><init>(Lcom/twidroid/TwidroidClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_16
    return-void
.end method

.method private Y()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/ubermedia/b/b;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "http://www.amazon.com/gp/mas/dl/android?p=com.twidroid"

    :goto_8
    return-object v0

    :cond_9
    sget-boolean v0, Lcom/twidroid/y;->a:Z

    if-eqz v0, :cond_10

    const-string v0, "http://bit.ly/1nbk4Iw"

    goto :goto_8

    :cond_10
    const-string v0, "http://bit.ly/1eUZcRo"

    goto :goto_8
.end method

.method private Z()V
    .registers 1

    return-void
.end method

.method private a(Ljava/util/ArrayList;)I
    .registers 5

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/a/d;

    invoke-virtual {v0}, Lcom/twidroid/fragments/a/d;->c()Lcom/twidroid/ui/c/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/ui/c/h;->n()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/twidroid/fragments/a/d;->e()I

    move-result v0

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, -0x1

    goto :goto_1e
.end method

.method private static a(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;
    .registers 5

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/IntentFilter;
    .registers 6

    invoke-static {p0, p1, p2}, Lcom/twidroid/TwidroidClient;->a(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    return-object v0
.end method

.method static synthetic a(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/d/v;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    return-object v0
.end method

.method private a(Landroid/support/v4/view/ViewPager;IZ)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/twidroid/TwidroidClient;->g(I)V

    invoke-virtual {p1, p2, p3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/twidroid/TwidroidClient;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/twidroid/TwidroidClient;->g(I)V

    return-void
.end method

.method static synthetic a(Lcom/twidroid/TwidroidClient;Landroid/view/Display;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/twidroid/TwidroidClient;->b(Landroid/view/Display;)V

    return-void
.end method

.method static synthetic a(Lcom/twidroid/TwidroidClient;Lcom/twidroid/model/twitter/c;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/twidroid/TwidroidClient;->a(Lcom/twidroid/model/twitter/c;)V

    return-void
.end method

.method static synthetic a(Lcom/twidroid/TwidroidClient;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/twidroid/TwidroidClient;->g(Z)V

    return-void
.end method

.method private a(Lcom/twidroid/UberSocialApplication;)V
    .registers 4

    new-instance v0, Lcom/twidroid/net/b/b;

    const-string v1, "imageCache"

    invoke-direct {v0, p0, v1}, Lcom/twidroid/net/b/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/high16 v1, 0x3e80

    invoke-virtual {v0, p0, v1}, Lcom/twidroid/net/b/b;->a(Landroid/content/Context;F)V

    new-instance v0, Lcom/twidroid/net/b/f;

    iget v1, p0, Lcom/twidroid/TwidroidClient;->t:I

    invoke-direct {v0, p0, v1}, Lcom/twidroid/net/b/f;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/twidroid/TwidroidClient;->an:Lcom/twidroid/net/b/f;

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->an:Lcom/twidroid/net/b/f;

    invoke-virtual {p1}, Lcom/twidroid/UberSocialApplication;->k()Lcom/twidroid/net/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/net/b/f;->a(Lcom/twidroid/net/b/a;)V

    return-void
.end method

.method private a(Lcom/twidroid/model/twitter/c;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ai:Lcom/twidroid/ui/a/af;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/af;->a(I)Lcom/twidroid/ui/c/h;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/c/f;

    invoke-direct {p0, v0, p1}, Lcom/twidroid/TwidroidClient;->a(Lcom/twidroid/ui/c/f;Lcom/twidroid/model/twitter/c;)V

    return-void
.end method

.method private a(Lcom/twidroid/ui/c/f;Lcom/twidroid/model/twitter/c;)V
    .registers 5

    if-nez p2, :cond_25

    :try_start_2
    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twidroid/ui/c/f;->a(Landroid/graphics/drawable/Drawable;)Lcom/twidroid/ui/c/h;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/twidroid/ui/c/f;->c(Ljava/lang/String;)Lcom/twidroid/ui/c/h;

    :goto_15
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->aa:Lcom/twidroid/ui/c/g;

    invoke-virtual {v0, p1}, Lcom/twidroid/ui/c/g;->d(Lcom/twidroid/ui/c/h;)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->G:Landroid/os/Handler;

    new-instance v1, Lcom/twidroid/TwidroidClient$38;

    invoke-direct {v1, p0, p1}, Lcom/twidroid/TwidroidClient$38;-><init>(Lcom/twidroid/TwidroidClient;Lcom/twidroid/ui/c/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_24
    return-void

    :cond_25
    invoke-virtual {p2}, Lcom/twidroid/model/twitter/c;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_40

    invoke-virtual {p2}, Lcom/twidroid/model/twitter/c;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twidroid/ui/c/f;->c(Ljava/lang/String;)Lcom/twidroid/ui/c/h;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_36} :catch_37

    goto :goto_15

    :catch_37
    move-exception v0

    const-string v0, "TwidroidClient"

    const-string v1, "error getting user"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :cond_40
    :try_start_40
    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twidroid/ui/c/f;->a(Landroid/graphics/drawable/Drawable;)Lcom/twidroid/ui/c/h;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/twidroid/ui/c/f;->c(Ljava/lang/String;)Lcom/twidroid/ui/c/h;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_53} :catch_37

    goto :goto_15
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 4

    const/4 v0, 0x1

    sget-boolean v1, Lcom/twidroid/TwidroidClient;->aC:Z

    if-nez v1, :cond_d

    const-string v1, "com.levelup.touiteur.extra.urlbypass"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    invoke-static {p0, p1}, Lcom/twidroid/TwidroidClient;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x0

    goto :goto_d
.end method

.method private aa()V
    .registers 4

    const v2, 0x7f0900ed

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->Y()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p0, v2}, Lcom/twidroid/TwidroidClient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {p0, v2}, Lcom/twidroid/TwidroidClient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/twidroid/TwidroidClient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/twidroid/TwidroidClient$29;

    invoke-direct {v1, p0}, Lcom/twidroid/TwidroidClient$29;-><init>(Lcom/twidroid/TwidroidClient;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_29
    return-void
.end method

.method private ab()V
    .registers 3

    const-string v0, "TwidroidClient"

    const-string v1, ":restoreTransactions"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->aW()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->Y:Lcom/twidroid/billing/BillingService;

    invoke-virtual {v0}, Lcom/twidroid/billing/BillingService;->b()Z

    :cond_14
    return-void
.end method

.method static synthetic b(Lcom/twidroid/TwidroidClient;I)I
    .registers 2

    iput p1, p0, Lcom/twidroid/TwidroidClient;->ab:I

    return p1
.end method

.method static synthetic b(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->U:Lcom/twidroid/b/a/b;

    return-object v0
.end method

.method private b(Landroid/view/Display;)V
    .registers 7

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/d/v;->bv()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.ubersocial.theme."

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/twidroid/net/c/w;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/TwidroidClient;->K:Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twidroid/TwidroidClient;->i(Z)V
    :try_end_21
    .catch Ljava/lang/VerifyError; {:try_start_1 .. :try_end_21} :catch_109

    :goto_21
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->K:Ljava/util/HashMap;

    const-string v2, "USER_ID"

    iget-object v3, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v3}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twidroid/b/a/b;->e()Lcom/twidroid/model/twitter/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twidroid/model/twitter/c;->o()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->K:Ljava/util/HashMap;

    const-string v2, "USER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "twitter/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v4}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twidroid/b/a/b;->e()Lcom/twidroid/model/twitter/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->K:Ljava/util/HashMap;

    const-string v2, "WIDTH"

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->K:Ljava/util/HashMap;

    const-string v2, "USER_NAME"

    iget-object v3, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v3}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twidroid/b/a/b;->e()Lcom/twidroid/model/twitter/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->K:Ljava/util/HashMap;

    const-string v2, "THEME"

    iget-object v3, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v3}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twidroid/d/v;->bv()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/twidroid/ui/themes/r;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->K:Ljava/util/HashMap;

    const-string v2, "POSTAL_CODE"

    iget-object v3, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v3}, Lcom/twidroid/d/v;->aY()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->K:Ljava/util/HashMap;

    const-string v2, "UBERAPI"

    const-string v3, "false"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_120

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_116

    iget-object v2, p0, Lcom/twidroid/TwidroidClient;->K:Ljava/util/HashMap;

    const-string v3, "NT"

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_113

    const-string v0, "2"

    :goto_d5
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d8
    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->T()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "en"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12a

    move v0, v1

    :goto_ec
    iget-object v2, p0, Lcom/twidroid/TwidroidClient;->K:Ljava/util/HashMap;

    const-string v3, "DPARAM26"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/twidroid/y;->a:Z

    if-eqz v0, :cond_1a0

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->K:Ljava/util/HashMap;

    const-string v1, "UNIQUE_ID"

    iget-object v2, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-static {v2}, Lcom/ubermedia/b/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_108
    return-void

    :catch_109
    move-exception v0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twidroid/TwidroidClient;->K:Ljava/util/HashMap;

    goto/16 :goto_21

    :cond_113
    const-string v0, "1"

    goto :goto_d5

    :cond_116
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->K:Ljava/util/HashMap;

    const-string v2, "NT"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d8

    :cond_120
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->K:Ljava/util/HashMap;

    const-string v2, "NT"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d8

    :cond_12a
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_138

    const/4 v0, 0x2

    goto :goto_ec

    :cond_138
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "it"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_146

    const/4 v0, 0x3

    goto :goto_ec

    :cond_146
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "de"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_154

    const/4 v0, 0x4

    goto :goto_ec

    :cond_154
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "es"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_162

    const/4 v0, 0x5

    goto :goto_ec

    :cond_162
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_171

    const/4 v0, 0x6

    goto/16 :goto_ec

    :cond_171
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_180

    const/4 v0, 0x7

    goto/16 :goto_ec

    :cond_180
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ja"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_190

    const/16 v0, 0x8

    goto/16 :goto_ec

    :cond_190
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ar"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c4

    const/16 v0, 0x9

    goto/16 :goto_ec

    :cond_1a0
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->K:Ljava/util/HashMap;

    const-string v2, "UNIQUE_ID"

    iget-object v3, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-static {v3}, Lcom/twidroid/d/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->K:Ljava/util/HashMap;

    const-string v2, "AD_TRACKING_ENABLED"

    iget-object v3, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-static {v3}, Lcom/twidroid/d/b;->b(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1c2

    :goto_1b9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_108

    :cond_1c2
    const/4 v1, 0x0

    goto :goto_1b9

    :cond_1c4
    move v0, v1

    goto/16 :goto_ec
.end method

.method private b(Landroid/view/View;)V
    .registers 7

    const/high16 v4, 0x3f80

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->T()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->ar()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-gez v0, :cond_26

    const-string v0, "TwidroidClient"

    const-string v1, "App was just installed. Streaming hint will appear in 10 minutes after install"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_26
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v4, v4, v1, v4}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lcom/twidroid/TwidroidClient$26;

    invoke-direct {v0, p0, p1}, Lcom/twidroid/TwidroidClient$26;-><init>(Lcom/twidroid/TwidroidClient;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->S()V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->G:Landroid/os/Handler;

    new-instance v1, Lcom/twidroid/TwidroidClient$27;

    invoke-direct {v1, p0, p1}, Lcom/twidroid/TwidroidClient$27;-><init>(Lcom/twidroid/TwidroidClient;Landroid/view/View;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a
.end method

.method private static b(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_44

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.admarvel.android.ads.AdMarvelActivity"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_93

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "url"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object p1, v0

    :cond_44
    :goto_44
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/twidroid/TwidroidClient;->az:[Landroid/content/IntentFilter;

    array-length v5, v4

    move v0, v1

    :goto_4c
    if-ge v0, v5, :cond_18f

    aget-object v6, v4, v0

    const-string v7, "IntentBlock"

    invoke-virtual {v6, v3, p1, v2, v7}, Landroid/content/IntentFilter;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_18b

    const-string v0, "TwidroidClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad intent detected intent:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " extras:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ads"

    const-string v1, "appstore_redirect"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    :goto_92
    return v0

    :cond_93
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.admarvel.android.ads.AdMarvelVideoActivity"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_cb

    const-string v0, "TwidroidClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdMarvelVideoActivity launched without click intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " extras:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    :cond_cb
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.google.ads.AdActivity"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_118

    const-string v0, "com.google.ads.AdOpener"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "intent"

    const-string v4, "action"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    const-string v3, "params"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/util/HashMap;

    if-eqz v3, :cond_44

    new-instance p1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "u"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_44

    :cond_118
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.millennialmedia.android.MMActivity"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_150

    const-string v0, "TwidroidClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMActivity launched without click intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " extras:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    :cond_150
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.millennialmedia.android.VideoPlayer"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_188

    const-string v0, "TwidroidClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VideoPlayer launched without click intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " extras:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    :cond_188
    move v0, v1

    goto/16 :goto_92

    :cond_18b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4c

    :cond_18f
    move v0, v1

    goto/16 :goto_92
.end method

.method static synthetic b(Lcom/twidroid/TwidroidClient;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/twidroid/TwidroidClient;->ag:Z

    return p1
.end method

.method static synthetic c(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/UberSocialApplication;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    return-object v0
.end method

.method static synthetic c(Lcom/twidroid/TwidroidClient;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/twidroid/TwidroidClient;->i(Z)V

    return-void
.end method

.method static synthetic d(Lcom/twidroid/TwidroidClient;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->Y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/ui/widgets/AccountSpinner;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ad:Lcom/twidroid/ui/widgets/AccountSpinner;

    return-object v0
.end method

.method static synthetic f(Lcom/twidroid/TwidroidClient;)Landroid/support/v4/view/ViewPager;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ac:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic f(Z)Z
    .registers 1

    sput-boolean p0, Lcom/twidroid/TwidroidClient;->aC:Z

    return p0
.end method

.method static synthetic g(Lcom/twidroid/TwidroidClient;)Landroid/support/v4/widget/DrawerLayout;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ah:Landroid/support/v4/widget/DrawerLayout;

    return-object v0
.end method

.method private g(I)V
    .registers 5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    :goto_3
    return-void

    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "broadcast.init.spinner"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "tag"

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->J()Lcom/twidroid/fragments/a/c;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/twidroid/fragments/a/c;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_3
.end method

.method private g(Z)V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0, p1}, Lcom/twidroid/d/v;->d(Z)V

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->J()Lcom/twidroid/fragments/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/fragments/a/c;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_30

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->J()Lcom/twidroid/fragments/a/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/a/c;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_26

    instance-of v2, v0, Lcom/twidroid/fragments/base/e;

    if-eqz v2, :cond_26

    if-eqz p1, :cond_2a

    check-cast v0, Lcom/twidroid/fragments/base/e;

    invoke-virtual {v0}, Lcom/twidroid/fragments/base/e;->y()V

    :cond_26
    :goto_26
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_2a
    check-cast v0, Lcom/twidroid/fragments/base/e;

    invoke-virtual {v0}, Lcom/twidroid/fragments/base/e;->z()V

    goto :goto_26

    :cond_30
    return-void
.end method

.method static synthetic h(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/ui/a/af;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ai:Lcom/twidroid/ui/a/af;

    return-object v0
.end method

.method private h(Z)V
    .registers 13

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ai:Lcom/twidroid/ui/a/af;

    invoke-virtual {v0}, Lcom/twidroid/ui/a/af;->a()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-instance v0, Lcom/twidroid/ui/c/f;

    const/4 v1, 0x0

    const v2, 0x7f0c01bf

    invoke-virtual {p0, v2}, Lcom/twidroid/TwidroidClient;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/twidroid/t;->a:Lcom/twidroid/t;

    invoke-virtual {v3}, Lcom/twidroid/t;->ordinal()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/twidroid/ui/c/f;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->ai:Lcom/twidroid/ui/a/af;

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/a/af;->a(Lcom/twidroid/ui/c/h;)V

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v1

    if-ltz v1, :cond_4a

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->ad:Lcom/twidroid/ui/widgets/AccountSpinner;

    invoke-virtual {v1}, Lcom/twidroid/ui/widgets/AccountSpinner;->b()Z

    move-result v1

    if-eqz v1, :cond_112

    :cond_4a
    const v1, 0x7f020067

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/c/f;->a(Landroid/graphics/drawable/Drawable;)Lcom/twidroid/ui/c/h;

    :goto_54
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ai:Lcom/twidroid/ui/a/af;

    new-instance v1, Lcom/twidroid/ui/c/f;

    const v2, 0x7f02011a

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x7f0c01ba

    invoke-virtual {p0, v3}, Lcom/twidroid/TwidroidClient;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/twidroid/t;->b:Lcom/twidroid/t;

    invoke-virtual {v4}, Lcom/twidroid/t;->ordinal()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/twidroid/ui/c/f;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/af;->a(Lcom/twidroid/ui/c/h;)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ai:Lcom/twidroid/ui/a/af;

    new-instance v1, Lcom/twidroid/ui/c/d;

    const v2, 0x7f0c01a9

    invoke-virtual {p0, v2}, Lcom/twidroid/TwidroidClient;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c01ad

    invoke-virtual {p0, v3}, Lcom/twidroid/TwidroidClient;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/twidroid/TwidroidClient$2;

    invoke-direct {v4, p0}, Lcom/twidroid/TwidroidClient$2;-><init>(Lcom/twidroid/TwidroidClient;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/twidroid/ui/c/d;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/af;->a(Lcom/twidroid/ui/c/h;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->aa:Lcom/twidroid/ui/c/g;

    invoke-virtual {v1}, Lcom/twidroid/ui/c/g;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v2, v0

    :cond_9c
    :goto_9c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/c/h;

    instance-of v1, v0, Lcom/twidroid/ui/c/i;

    if-eqz v1, :cond_120

    move-object v1, v0

    check-cast v1, Lcom/twidroid/ui/c/i;

    const-string v4, "TwidroidClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SCREEN_NAME3: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v1, :cond_11d

    invoke-virtual {v1}, Lcom/twidroid/ui/c/i;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11d

    invoke-virtual {v1}, Lcom/twidroid/ui/c/i;->c()Ljava/lang/String;

    move-result-object v3

    :goto_c8
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/twidroid/fragments/e/at;

    iget-object v4, p0, Lcom/twidroid/TwidroidClient;->X:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v1}, Lcom/twidroid/ui/c/i;->c()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v4, v9}, Lcom/twidroid/fragments/e/at;-><init>(Lcom/twidroid/model/twitter/c;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/twidroid/ui/c/i;->a(Lcom/twidroid/fragments/base/o;)V

    invoke-virtual {v1}, Lcom/twidroid/ui/c/i;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/twidroid/ui/c/i;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/twidroid/ui/c/i;->f()Lcom/twidroid/fragments/base/o;

    move-result-object v3

    invoke-virtual {v1}, Lcom/twidroid/ui/c/i;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/twidroid/fragments/base/o;->h(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/twidroid/ui/c/i;->f()Lcom/twidroid/fragments/base/o;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/twidroid/TwidroidClient$3;

    invoke-direct {v4, p0, v1}, Lcom/twidroid/TwidroidClient$3;-><init>(Lcom/twidroid/TwidroidClient;Lcom/twidroid/ui/c/i;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    move v1, v2

    :goto_108
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/twidroid/TwidroidClient;->ai:Lcom/twidroid/ui/a/af;

    invoke-virtual {v2, v0}, Lcom/twidroid/ui/a/af;->a(Lcom/twidroid/ui/c/h;)V

    move v2, v1

    goto :goto_9c

    :cond_112
    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->ad:Lcom/twidroid/ui/widgets/AccountSpinner;

    invoke-virtual {v1}, Lcom/twidroid/ui/widgets/AccountSpinner;->getSelectedAccount()Lcom/twidroid/model/twitter/c;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/twidroid/TwidroidClient;->a(Lcom/twidroid/ui/c/f;Lcom/twidroid/model/twitter/c;)V

    goto/16 :goto_54

    :cond_11d
    const-string v3, ""

    goto :goto_c8

    :cond_120
    instance-of v1, v0, Lcom/twidroid/ui/c/e;

    if-eqz v1, :cond_14f

    move-object v1, v0

    check-cast v1, Lcom/twidroid/ui/c/e;

    new-instance v2, Lcom/twidroid/fragments/e/ai;

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/twidroid/ui/c/e;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/twidroid/fragments/e/ai;-><init>(Lcom/twidroid/model/twitter/c;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/twidroid/ui/c/e;->a(Lcom/twidroid/fragments/base/o;)V

    invoke-virtual {v1}, Lcom/twidroid/ui/c/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twidroid/ui/c/e;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/twidroid/ui/c/e;->f()Lcom/twidroid/fragments/base/o;

    move-result-object v2

    invoke-virtual {v1}, Lcom/twidroid/ui/c/e;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twidroid/fragments/base/o;->h(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/twidroid/ui/c/e;->f()Lcom/twidroid/fragments/base/o;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, p1

    goto :goto_108

    :cond_14f
    instance-of v1, v0, Lcom/twidroid/ui/c/c;

    if-eqz v1, :cond_373

    invoke-virtual {v0}, Lcom/twidroid/ui/c/h;->b()Z

    move-result v1

    if-nez v1, :cond_9c

    invoke-virtual {v0}, Lcom/twidroid/ui/c/h;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16d

    invoke-virtual {v0}, Lcom/twidroid/ui/c/h;->d()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TAB_SEARCH"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16d

    iput-object v0, p0, Lcom/twidroid/TwidroidClient;->al:Lcom/twidroid/ui/c/h;

    :cond_16d
    move-object v1, v0

    check-cast v1, Lcom/twidroid/ui/c/c;

    invoke-virtual {v1}, Lcom/twidroid/ui/c/c;->f()Lcom/twidroid/fragments/base/o;

    move-result-object v3

    instance-of v4, v1, Lcom/twidroid/ui/c/b;

    if-eqz v4, :cond_36e

    if-nez v3, :cond_36e

    const/4 v4, 0x1

    move-object v2, v1

    check-cast v2, Lcom/twidroid/ui/c/b;

    new-instance v3, Lcom/twidroid/fragments/e/aq;

    iget-object v9, p0, Lcom/twidroid/TwidroidClient;->X:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v2}, Lcom/twidroid/ui/c/b;->g()I

    move-result v2

    invoke-direct {v3, v9, v2}, Lcom/twidroid/fragments/e/aq;-><init>(Lcom/twidroid/model/twitter/c;I)V

    invoke-virtual {v1, v3}, Lcom/twidroid/ui/c/c;->a(Lcom/twidroid/fragments/base/o;)V

    move-object v2, v3

    move v3, v4

    :goto_18e
    invoke-virtual {v1}, Lcom/twidroid/ui/c/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/twidroid/fragments/base/o;->h(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v1, v2, Lcom/twidroid/fragments/base/e;

    if-eqz v1, :cond_36b

    move-object v1, v2

    check-cast v1, Lcom/twidroid/fragments/base/e;

    move v1, v3

    goto/16 :goto_108

    :cond_1a2
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ai:Lcom/twidroid/ui/a/af;

    new-instance v1, Lcom/twidroid/ui/c/d;

    const-string v3, "Twitter"

    invoke-direct {v1, v3}, Lcom/twidroid/ui/c/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/af;->a(Lcom/twidroid/ui/c/h;)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ai:Lcom/twidroid/ui/a/af;

    new-instance v1, Lcom/twidroid/ui/c/f;

    const/4 v3, 0x0

    const v4, 0x7f0c01a5

    invoke-virtual {p0, v4}, Lcom/twidroid/TwidroidClient;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/twidroid/t;->c:Lcom/twidroid/t;

    invoke-virtual {v5}, Lcom/twidroid/t;->ordinal()I

    move-result v5

    invoke-direct {v1, v3, v4, v5}, Lcom/twidroid/ui/c/f;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/af;->a(Lcom/twidroid/ui/c/h;)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ai:Lcom/twidroid/ui/a/af;

    new-instance v1, Lcom/twidroid/ui/c/f;

    const/4 v3, 0x0

    const v4, 0x7f0c01d4

    invoke-virtual {p0, v4}, Lcom/twidroid/TwidroidClient;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/twidroid/t;->d:Lcom/twidroid/t;

    invoke-virtual {v5}, Lcom/twidroid/t;->ordinal()I

    move-result v5

    invoke-direct {v1, v3, v4, v5}, Lcom/twidroid/ui/c/f;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/af;->a(Lcom/twidroid/ui/c/h;)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ai:Lcom/twidroid/ui/a/af;

    new-instance v1, Lcom/twidroid/ui/c/f;

    const/4 v3, 0x0

    const v4, 0x7f0c02f3

    invoke-virtual {p0, v4}, Lcom/twidroid/TwidroidClient;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/twidroid/t;->j:Lcom/twidroid/t;

    invoke-virtual {v5}, Lcom/twidroid/t;->ordinal()I

    move-result v5

    invoke-direct {v1, v3, v4, v5}, Lcom/twidroid/ui/c/f;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/af;->a(Lcom/twidroid/ui/c/h;)V

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->L()Z

    move-result v0

    if-eqz v0, :cond_214

    new-instance v0, Lcom/twidroid/ui/c/f;

    const/4 v1, 0x0

    const v3, 0x7f0c01b1

    invoke-virtual {p0, v3}, Lcom/twidroid/TwidroidClient;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/twidroid/t;->e:Lcom/twidroid/t;

    invoke-virtual {v4}, Lcom/twidroid/t;->ordinal()I

    move-result v4

    invoke-direct {v0, v1, v3, v4}, Lcom/twidroid/ui/c/f;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->ai:Lcom/twidroid/ui/a/af;

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/a/af;->a(Lcom/twidroid/ui/c/h;)V

    :cond_214
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ai:Lcom/twidroid/ui/a/af;

    new-instance v1, Lcom/twidroid/ui/c/d;

    const v3, 0x7f0c01a7

    invoke-virtual {p0, v3}, Lcom/twidroid/TwidroidClient;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/twidroid/ui/c/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/af;->a(Lcom/twidroid/ui/c/h;)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ai:Lcom/twidroid/ui/a/af;

    new-instance v1, Lcom/twidroid/ui/c/f;

    const v3, 0x7f020125

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0c01d5

    invoke-virtual {p0, v4}, Lcom/twidroid/TwidroidClient;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/twidroid/t;->f:Lcom/twidroid/t;

    invoke-virtual {v5}, Lcom/twidroid/t;->ordinal()I

    move-result v5

    invoke-direct {v1, v3, v4, v5}, Lcom/twidroid/ui/c/f;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/af;->a(Lcom/twidroid/ui/c/h;)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->aV()Z

    move-result v0

    if-nez v0, :cond_2db

    const/4 v0, 0x1

    :goto_24c
    if-eqz v0, :cond_26c

    invoke-static {}, Lcom/ubermedia/b/b;->a()Z

    move-result v0

    if-nez v0, :cond_26c

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ai:Lcom/twidroid/ui/a/af;

    new-instance v1, Lcom/twidroid/ui/c/f;

    const/4 v3, 0x0

    const v4, 0x7f0c0087

    invoke-virtual {p0, v4}, Lcom/twidroid/TwidroidClient;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/twidroid/t;->g:Lcom/twidroid/t;

    invoke-virtual {v5}, Lcom/twidroid/t;->ordinal()I

    move-result v5

    invoke-direct {v1, v3, v4, v5}, Lcom/twidroid/ui/c/f;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/af;->a(Lcom/twidroid/ui/c/h;)V

    :cond_26c
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ai:Lcom/twidroid/ui/a/af;

    new-instance v1, Lcom/twidroid/ui/c/f;

    const/4 v3, 0x0

    const v4, 0x7f0c01d6

    invoke-virtual {p0, v4}, Lcom/twidroid/TwidroidClient;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/twidroid/t;->h:Lcom/twidroid/t;

    invoke-virtual {v5}, Lcom/twidroid/t;->ordinal()I

    move-result v5

    invoke-direct {v1, v3, v4, v5}, Lcom/twidroid/ui/c/f;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/af;->a(Lcom/twidroid/ui/c/h;)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ai:Lcom/twidroid/ui/a/af;

    new-instance v1, Lcom/twidroid/ui/c/f;

    const/4 v3, 0x0

    const v4, 0x7f0c01d7

    invoke-virtual {p0, v4}, Lcom/twidroid/TwidroidClient;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/twidroid/t;->i:Lcom/twidroid/t;

    invoke-virtual {v5}, Lcom/twidroid/t;->ordinal()I

    move-result v5

    invoke-direct {v1, v3, v4, v5}, Lcom/twidroid/ui/c/f;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/af;->a(Lcom/twidroid/ui/c/h;)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->H:Landroid/widget/ListView;

    new-instance v1, Lcom/twidroid/u;

    invoke-direct {v1, p0, p0}, Lcom/twidroid/u;-><init>(Lcom/twidroid/TwidroidClient;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ai:Lcom/twidroid/ui/a/af;

    invoke-virtual {v0}, Lcom/twidroid/ui/a/af;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->J()Lcom/twidroid/fragments/a/c;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_2b6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2de

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/c/h;

    new-instance v5, Lcom/twidroid/fragments/a/d;

    invoke-direct {v5}, Lcom/twidroid/fragments/a/d;-><init>()V

    invoke-virtual {v5, v0}, Lcom/twidroid/fragments/a/d;->a(Lcom/twidroid/ui/c/h;)V

    invoke-virtual {v5, v1}, Lcom/twidroid/fragments/a/d;->b(I)V

    invoke-virtual {v0}, Lcom/twidroid/ui/c/h;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/twidroid/fragments/a/d;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2b6

    :cond_2db
    const/4 v0, 0x0

    goto/16 :goto_24c

    :cond_2de
    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->J()Lcom/twidroid/fragments/a/c;

    move-result-object v0

    if-eqz v0, :cond_2f7

    invoke-virtual {v0, v4}, Lcom/twidroid/fragments/a/c;->a(Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/twidroid/fragments/a/c;->notifyDataSetChanged()V

    const v0, 0x7f0901b8

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-virtual {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->c()V

    :cond_2f6
    :goto_2f6
    return-void

    :cond_2f7
    new-instance v0, Lcom/twidroid/fragments/a/c;

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v1, v5, v4}, Lcom/twidroid/fragments/a/c;-><init>(Landroid/support/v4/app/FragmentManager;Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->ac:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const v0, 0x7f0901b8

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-direct {p0, v4}, Lcom/twidroid/TwidroidClient;->a(Ljava/util/ArrayList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->setHighlightPosition(I)V

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->S()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->setHighlightColor(I)V

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->T()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->setSelectedColor(I)V

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->ac:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    const v1, 0x7f0901c9

    invoke-virtual {p0, v1}, Lcom/twidroid/TwidroidClient;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v4}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twidroid/ui/themes/r;->T()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0, p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->setOnTabIndicatorScollUpListener(Lcom/viewpagerindicator/b;)V

    new-instance v1, Lcom/twidroid/TwidroidClient$4;

    invoke-direct {v1, p0}, Lcom/twidroid/TwidroidClient$4;-><init>(Lcom/twidroid/TwidroidClient;)V

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget v0, p0, Lcom/twidroid/TwidroidClient;->ab:I

    invoke-direct {p0, v0}, Lcom/twidroid/TwidroidClient;->g(I)V

    if-eqz v2, :cond_2f6

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->G:Landroid/os/Handler;

    new-instance v1, Lcom/twidroid/x;

    invoke-direct {v1, p0, v3}, Lcom/twidroid/x;-><init>(Lcom/twidroid/TwidroidClient;Lcom/twidroid/fragments/a/c;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2f6

    :cond_36b
    move v1, v3

    goto/16 :goto_108

    :cond_36e
    move-object v10, v3

    move v3, v2

    move-object v2, v10

    goto/16 :goto_18e

    :cond_373
    move v1, v2

    goto/16 :goto_108
.end method

.method static synthetic i(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/ui/c/g;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->aa:Lcom/twidroid/ui/c/g;

    return-object v0
.end method

.method private i(Z)V
    .registers 8

    invoke-static {p0}, Lcom/ubermedia/b/h;->a(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->K:Ljava/util/HashMap;

    const-string v2, "GEOLOCATION"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->K:Ljava/util/HashMap;

    const-string v2, "LOCATION_OBJECT"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_39
    :goto_39
    return-void

    :cond_3a
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->bs()Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->K:Ljava/util/HashMap;

    const-string v2, "GEOLOCATION"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_75

    :try_start_6e
    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->K:Ljava/util/HashMap;

    const-string v2, "LOCATION_OBJECT"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_75} :catch_84

    :cond_75
    :goto_75
    if-eqz p1, :cond_39

    new-instance v0, Lcom/twidroid/net/c/a;

    const-string v1, "network"

    new-instance v2, Lcom/twidroid/TwidroidClient$7;

    invoke-direct {v2, p0}, Lcom/twidroid/TwidroidClient$7;-><init>(Lcom/twidroid/TwidroidClient;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/twidroid/net/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twidroid/net/c/c;)V

    goto :goto_39

    :catch_84
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_75
.end method

.method static synthetic j(Lcom/twidroid/TwidroidClient;)V
    .registers 1

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->P()V

    return-void
.end method

.method static synthetic k(Lcom/twidroid/TwidroidClient;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/twidroid/TwidroidClient;->at:Z

    return v0
.end method

.method static synthetic l(Lcom/twidroid/TwidroidClient;)Ljava/util/Timer;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->au:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic m(Lcom/twidroid/TwidroidClient;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/twidroid/TwidroidClient;->af:Z

    return v0
.end method

.method static synthetic n(Lcom/twidroid/TwidroidClient;)V
    .registers 1

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->T()V

    return-void
.end method

.method static synthetic o(Lcom/twidroid/TwidroidClient;)Lcom/ubermedia/b/g;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->aq:Lcom/ubermedia/b/g;

    return-object v0
.end method

.method static synthetic p(Lcom/twidroid/TwidroidClient;)V
    .registers 1

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->ab()V

    return-void
.end method

.method public static t()V
    .registers 6

    sget-object v0, Lcom/twidroid/TwidroidClient;->aA:Landroid/app/Instrumentation;

    if-eqz v0, :cond_4a

    sget-object v0, Lcom/twidroid/TwidroidClient;->aB:[Landroid/app/Instrumentation$ActivityMonitor;

    if-nez v0, :cond_4a

    const-string v0, "TwidroidClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register intent blockers in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/twidroid/TwidroidClient;->aA:Landroid/app/Instrumentation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/twidroid/TwidroidClient;->az:[Landroid/content/IntentFilter;

    array-length v0, v0

    new-array v0, v0, [Landroid/app/Instrumentation$ActivityMonitor;

    sput-object v0, Lcom/twidroid/TwidroidClient;->aB:[Landroid/app/Instrumentation$ActivityMonitor;

    const/4 v0, 0x0

    :goto_2a
    sget-object v1, Lcom/twidroid/TwidroidClient;->az:[Landroid/content/IntentFilter;

    array-length v1, v1

    if-ge v0, v1, :cond_4a

    sget-object v1, Lcom/twidroid/TwidroidClient;->aB:[Landroid/app/Instrumentation$ActivityMonitor;

    new-instance v2, Landroid/app/Instrumentation$ActivityMonitor;

    sget-object v3, Lcom/twidroid/TwidroidClient;->az:[Landroid/content/IntentFilter;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Landroid/app/Instrumentation$ActivityMonitor;-><init>(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)V

    aput-object v2, v1, v0

    sget-object v1, Lcom/twidroid/TwidroidClient;->aA:Landroid/app/Instrumentation;

    sget-object v2, Lcom/twidroid/TwidroidClient;->aB:[Landroid/app/Instrumentation$ActivityMonitor;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_4a
    return-void
.end method

.method public static u()V
    .registers 3

    sget-object v0, Lcom/twidroid/TwidroidClient;->aA:Landroid/app/Instrumentation;

    if-eqz v0, :cond_37

    sget-object v0, Lcom/twidroid/TwidroidClient;->aB:[Landroid/app/Instrumentation$ActivityMonitor;

    if-eqz v0, :cond_37

    const-string v0, "TwidroidClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregister intent blockers in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/twidroid/TwidroidClient;->aA:Landroid/app/Instrumentation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_23
    sget-object v1, Lcom/twidroid/TwidroidClient;->aB:[Landroid/app/Instrumentation$ActivityMonitor;

    array-length v1, v1

    if-ge v0, v1, :cond_34

    sget-object v1, Lcom/twidroid/TwidroidClient;->aA:Landroid/app/Instrumentation;

    sget-object v2, Lcom/twidroid/TwidroidClient;->aB:[Landroid/app/Instrumentation$ActivityMonitor;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->removeMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_34
    const/4 v0, 0x0

    sput-object v0, Lcom/twidroid/TwidroidClient;->aB:[Landroid/app/Instrumentation$ActivityMonitor;

    :cond_37
    return-void
.end method

.method private v()V
    .registers 12

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "twitter_accounts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    const-string v0, "facebook-enabled"

    aput-object v0, v2, v6

    invoke-static {p0}, Lcom/twidroid/net/a/a/c;->b(Landroid/content/Context;)Lcom/twidroid/net/a/a/c;

    move-result-object v0

    if-eqz v0, :cond_229

    const-string v0, "Yes"

    :goto_38
    aput-object v0, v2, v7

    invoke-static {v2}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "configuration"

    const/16 v0, 0xc

    new-array v2, v0, [Ljava/lang/Object;

    const-string v0, "2-column-mode"

    aput-object v0, v2, v6

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->y()Z

    move-result v0

    if-eqz v0, :cond_22d

    const-string v0, "Yes"

    :goto_55
    aput-object v0, v2, v7

    const-string v0, "flip-tweets"

    aput-object v0, v2, v8

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->cn()Z

    move-result v0

    if-eqz v0, :cond_231

    const-string v0, "Yes"

    :goto_65
    aput-object v0, v2, v9

    const-string v0, "use-realnames"

    aput-object v0, v2, v10

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->at()Z

    move-result v0

    if-eqz v0, :cond_235

    const-string v0, "Yes"

    :goto_76
    aput-object v0, v2, v3

    const/4 v0, 0x6

    const-string v3, "enable-filters"

    aput-object v3, v2, v0

    const/4 v3, 0x7

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->aE()Z

    move-result v0

    if-eqz v0, :cond_239

    const-string v0, "Yes"

    :goto_88
    aput-object v0, v2, v3

    const/16 v0, 0x8

    const-string v3, "streaming"

    aput-object v3, v2, v0

    const/16 v3, 0x9

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->aP()Z

    move-result v0

    if-eqz v0, :cond_23d

    const-string v0, "Yes"

    :goto_9c
    aput-object v0, v2, v3

    const/16 v0, 0xa

    const-string v3, "is_pro"

    aput-object v3, v2, v0

    const/16 v3, 0xb

    sget-boolean v0, Lcom/twidroid/y;->a:Z

    if-eqz v0, :cond_241

    const-string v0, "Yes"

    :goto_ac
    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "No"

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v1}, Lcom/twidroid/d/v;->O()Z

    move-result v1

    if-eqz v1, :cond_d1

    :try_start_bf
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->ag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_d0} :catch_245

    move-result-object v0

    :cond_d1
    :goto_d1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v1}, Lcom/twidroid/d/v;->A()Z

    move-result v1

    if-eqz v1, :cond_e3

    const-string v1, "tweets"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e3
    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v1}, Lcom/twidroid/d/v;->E()Z

    move-result v1

    if-eqz v1, :cond_f6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_24a

    const-string v1, "_mentions"

    :goto_f3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f6
    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v1}, Lcom/twidroid/d/v;->C()Z

    move-result v1

    if-eqz v1, :cond_109

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_24e

    const-string v1, "_dms"

    :goto_106
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_109
    const-string v3, "config/notification_settings"

    const/16 v1, 0x16

    new-array v4, v1, [Ljava/lang/Object;

    const-string v1, "shortcut_icon"

    aput-object v1, v4, v6

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v1}, Lcom/twidroid/d/v;->N()Z

    move-result v1

    if-eqz v1, :cond_252

    const-string v1, "Yes"

    :goto_11d
    aput-object v1, v4, v7

    const-string v1, "start_at_boot"

    aput-object v1, v4, v8

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v1}, Lcom/twidroid/d/v;->aw()Z

    move-result v1

    if-eqz v1, :cond_256

    const-string v1, "Yes"

    :goto_12d
    aput-object v1, v4, v9

    const-string v1, "show_complete_message"

    aput-object v1, v4, v10

    const/4 v5, 0x5

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v1}, Lcom/twidroid/d/v;->ai()Z

    move-result v1

    if-eqz v1, :cond_25a

    const-string v1, "Yes"

    :goto_13e
    aput-object v1, v4, v5

    const/4 v1, 0x6

    const-string v5, "alert_ringtone"

    aput-object v5, v4, v1

    const/4 v1, 0x7

    iget-object v5, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v5}, Lcom/twidroid/d/v;->O()Z

    move-result v5

    if-eqz v5, :cond_25e

    :goto_14e
    aput-object v0, v4, v1

    const/16 v0, 0x8

    const-string v1, "led_flash"

    aput-object v1, v4, v0

    const/16 v1, 0x9

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->aE()Z

    move-result v0

    if-eqz v0, :cond_262

    const-string v0, "Yes"

    :goto_162
    aput-object v0, v4, v1

    const/16 v0, 0xa

    const-string v1, "streaming"

    aput-object v1, v4, v0

    const/16 v1, 0xb

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->aR()Z

    move-result v0

    if-eqz v0, :cond_266

    const-string v0, "Yes"

    :goto_176
    aput-object v0, v4, v1

    const/16 v0, 0xc

    const-string v1, "bg-streaming"

    aput-object v1, v4, v0

    const/16 v1, 0xd

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->aR()Z

    move-result v0

    if-eqz v0, :cond_26a

    const-string v0, "Yes"

    :goto_18a
    aput-object v0, v4, v1

    const/16 v0, 0xe

    const-string v1, "pintotop"

    aput-object v1, v4, v0

    const/16 v1, 0xf

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->aQ()Z

    move-result v0

    if-eqz v0, :cond_26e

    const-string v0, "Yes"

    :goto_19e
    aput-object v0, v4, v1

    const/16 v0, 0x10

    const-string v1, "check_for"

    aput-object v1, v4, v0

    const/16 v1, 0x11

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_272

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1b2
    aput-object v0, v4, v1

    const/16 v0, 0x12

    const-string v1, "bg_updates"

    aput-object v1, v4, v0

    const/16 v1, 0x13

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->v()Z

    move-result v0

    if-eqz v0, :cond_276

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->w()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1ce
    aput-object v0, v4, v1

    const/16 v0, 0x14

    const-string v1, "vibrate"

    aput-object v1, v4, v0

    const/16 v1, 0x15

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->K()Z

    move-result v0

    if-eqz v0, :cond_27a

    const-string v0, "Yes"

    :goto_1e2
    aput-object v0, v4, v1

    invoke-static {v4}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "config/crossposting"

    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/Object;

    const-string v0, "gtalk"

    aput-object v0, v2, v6

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->bP()Z

    move-result v0

    if-eqz v0, :cond_27e

    const-string v0, "Yes"

    :goto_1fe
    aput-object v0, v2, v7

    const-string v0, "email"

    aput-object v0, v2, v8

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->bO()Z

    move-result v0

    if-eqz v0, :cond_282

    const-string v0, "Yes"

    :goto_20e
    aput-object v0, v2, v9

    const-string v0, "facebook"

    aput-object v0, v2, v10

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->bM()Z

    move-result v0

    if-eqz v0, :cond_285

    const-string v0, "Yes"

    :goto_21f
    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_229
    const-string v0, "No"

    goto/16 :goto_38

    :cond_22d
    const-string v0, "No"

    goto/16 :goto_55

    :cond_231
    const-string v0, "No"

    goto/16 :goto_65

    :cond_235
    const-string v0, "No"

    goto/16 :goto_76

    :cond_239
    const-string v0, "No"

    goto/16 :goto_88

    :cond_23d
    const-string v0, "No"

    goto/16 :goto_9c

    :cond_241
    const-string v0, "No"

    goto/16 :goto_ac

    :catch_245
    move-exception v0

    const-string v0, "Unavailable"

    goto/16 :goto_d1

    :cond_24a
    const-string v1, "mentions"

    goto/16 :goto_f3

    :cond_24e
    const-string v1, "dms"

    goto/16 :goto_106

    :cond_252
    const-string v1, "No"

    goto/16 :goto_11d

    :cond_256
    const-string v1, "No"

    goto/16 :goto_12d

    :cond_25a
    const-string v1, "No"

    goto/16 :goto_13e

    :cond_25e
    const-string v0, "No"

    goto/16 :goto_14e

    :cond_262
    const-string v0, "No"

    goto/16 :goto_162

    :cond_266
    const-string v0, "No"

    goto/16 :goto_176

    :cond_26a
    const-string v0, "No"

    goto/16 :goto_18a

    :cond_26e
    const-string v0, "No"

    goto/16 :goto_19e

    :cond_272
    const-string v0, "None"

    goto/16 :goto_1b2

    :cond_276
    const-string v0, "No"

    goto/16 :goto_1ce

    :cond_27a
    const-string v0, "No"

    goto/16 :goto_1e2

    :cond_27e
    const-string v0, "No"

    goto/16 :goto_1fe

    :cond_282
    const-string v0, "No"

    goto :goto_20e

    :cond_285
    const-string v0, "No"

    goto :goto_21f
.end method

.method private w()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->cv()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0, v1}, Lcom/twidroid/d/v;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "twitvidcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    const-string v1, "twitvidcom"

    invoke-virtual {v0, v1}, Lcom/twidroid/d/v;->b(Ljava/lang/String;)V

    :cond_1f
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->cw()V

    :cond_24
    return-void
.end method

.method private x()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    const-string v1, "image_provider4"

    const-string v2, "native"

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/d/v;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "twitgoo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "twitpic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_1a
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    const-string v1, "image_provider4"

    const-string v2, "native"

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/d/v;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method private y()V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->U:Lcom/twidroid/b/a/b;

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v0, "TwidroidClient"

    const-string v1, "Account is not set. Will do ad stuff when login process over"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    sget-boolean v0, Lcom/twidroid/y;->y:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-static {v0}, Lcom/ubermedia/uberads/a;->a(Landroid/content/Context;)Lcom/ubermedia/uberads/UberAd;

    move-result-object v0

    if-eqz v0, :cond_46

    const-string v1, "TwidroidClient"

    const-string v2, "have some ads to show"

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v1}, Lcom/twidroid/d/v;->ct()Z

    move-result v1

    if-eqz v1, :cond_6b

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ubermedia/uberads/activity/FullscreenAdActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "EXTRA_AD"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->startActivity(Landroid/content/Intent;)V

    :goto_41
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-static {v0}, Lcom/ubermedia/uberads/a;->b(Landroid/content/Context;)V

    :cond_46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v2}, Lcom/twidroid/d/v;->cq()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v2}, Lcom/twidroid/d/v;->cs()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_86

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->ct()Z

    move-result v0

    if-nez v0, :cond_73

    const-string v0, "TwidroidClient"

    const-string v1, "No need for ad update. Splash ads was disabled."

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_6b
    const-string v0, "TwidroidClient"

    const-string v1, "Splash ads was disabled from config server"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    :cond_73
    const-string v0, "TwidroidClient"

    const-string v1, "Need to update ad!"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/twidroid/TwidroidClient$23;

    invoke-direct {v0, p0}, Lcom/twidroid/TwidroidClient$23;-><init>(Lcom/twidroid/TwidroidClient;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twidroid/TwidroidClient$23;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    goto :goto_f

    :cond_86
    const-string v0, "TwidroidClient"

    const-string v1, "No need to update ad"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method private z()V
    .registers 1

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/String;)V
    .registers 5

    if-nez p3, :cond_a

    invoke-virtual {p0, p2}, Lcom/twidroid/TwidroidClient;->e(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_a
    new-instance v0, Lcom/twidroid/TwidroidClient$31;

    invoke-direct {v0, p0, p3}, Lcom/twidroid/TwidroidClient$31;-><init>(Lcom/twidroid/TwidroidClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public a(Landroid/view/Display;)V
    .registers 7

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/twidroid/TwidroidClient$8;

    invoke-direct {v1, p0, p1}, Lcom/twidroid/TwidroidClient$8;-><init>(Lcom/twidroid/TwidroidClient;Landroid/view/Display;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const v0, 0x7f0900f2

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->a(Landroid/widget/FrameLayout;)V

    :try_start_19
    new-instance v1, Lcom/admarvel/android/ads/AdMarvelView;

    invoke-direct {v1, p0}, Lcom/admarvel/android/ads/AdMarvelView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/twidroid/TwidroidClient;->J:Lcom/admarvel/android/ads/AdMarvelView;

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->J:Lcom/admarvel/android/ads/AdMarvelView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/AdMarvelView;->setEnableClickRedirect(Z)V

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->J:Lcom/admarvel/android/ads/AdMarvelView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/AdMarvelView;->setDisableAnimation(Z)V

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->J:Lcom/admarvel/android/ads/AdMarvelView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/twidroid/TwidroidClient$9;

    invoke-direct {v2, p0}, Lcom/twidroid/TwidroidClient$9;-><init>(Lcom/twidroid/TwidroidClient;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->J:Lcom/admarvel/android/ads/AdMarvelView;

    new-instance v2, Lcom/twidroid/TwidroidClient$10;

    invoke-direct {v2, p0, v0}, Lcom/twidroid/TwidroidClient$10;-><init>(Lcom/twidroid/TwidroidClient;Landroid/widget/FrameLayout;)V

    invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/AdMarvelView;->setListener(Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewListener;)V

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->b(Landroid/widget/FrameLayout;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_5c} :catch_5d

    :goto_5c
    return-void

    :catch_5d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5c
.end method

.method public a(Landroid/widget/FrameLayout;)V
    .registers 3

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twidroid/TwidroidClient;->J:Lcom/admarvel/android/ads/AdMarvelView;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/view/View;)V
    .registers 7

    const/high16 v2, 0x3f80

    const-string v0, "TwidroidClient"

    const-string v1, "Show error."

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_13

    const-string v0, "TwidroidClient"

    const-string v1, "Error no error view component found"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    return-void

    :cond_13
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0901a9

    if-ne v0, v1, :cond_20

    invoke-direct {p0, p2}, Lcom/twidroid/TwidroidClient;->b(Landroid/view/View;)V

    goto :goto_12

    :cond_20
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "Could not authenticate with OAuth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const v1, 0x7f0c0022

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->G:Landroid/os/Handler;

    new-instance v1, Lcom/twidroid/TwidroidClient$24;

    invoke-direct {v1, p0}, Lcom/twidroid/TwidroidClient$24;-><init>(Lcom/twidroid/TwidroidClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3e
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->G:Landroid/os/Handler;

    new-instance v1, Lcom/twidroid/TwidroidClient$25;

    invoke-direct {v1, p0, p2}, Lcom/twidroid/TwidroidClient$25;-><init>(Lcom/twidroid/TwidroidClient;Landroid/view/View;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_12
.end method

.method public b(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->e(Z)V

    return-void
.end method

.method public b(Landroid/widget/FrameLayout;)V
    .registers 6

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x4214

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    const v2, 0x7f03001d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/twidroid/TwidroidClient$6;

    invoke-direct {v1, p0, p1}, Lcom/twidroid/TwidroidClient$6;-><init>(Lcom/twidroid/TwidroidClient;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method b(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->W()Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_d
    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->W()Z

    move-result v1

    if-eqz v1, :cond_46

    const-string v1, "photo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_40

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_20
    const/16 v1, 0x54

    invoke-virtual {p0, v0, v1}, Lcom/twidroid/TwidroidClient;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_26
    if-eqz p1, :cond_38

    const-string v0, "photo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twidroid/activity/PluginTakePhoto;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_d

    :cond_38
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_d

    :cond_40
    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_20

    :cond_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "application/ubersocial-plugin.get"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_20
.end method

.method public c(ILjava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/twidroid/TwidroidClient$32;

    invoke-direct {v0, p0, p2, p1}, Lcom/twidroid/TwidroidClient$32;-><init>(Lcom/twidroid/TwidroidClient;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Landroid/content/Intent;)V
    .registers 11

    const/4 v8, 0x1

    const/4 v5, 0x0

    sget-object v0, Lcom/twidroid/TwidroidClient;->k:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    :try_start_e
    const-string v0, "TwidroidClient"

    const-string v1, "::new theme loaded"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_3c

    :goto_15
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->aa:Lcom/twidroid/ui/c/g;

    invoke-virtual {v0, p0}, Lcom/twidroid/ui/c/g;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ai:Lcom/twidroid/ui/a/af;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ai:Lcom/twidroid/ui/a/af;

    invoke-virtual {v0}, Lcom/twidroid/ui/a/af;->a()V

    invoke-direct {p0, v5}, Lcom/twidroid/TwidroidClient;->h(Z)V

    :cond_26
    const-string v0, "ubersocial.broadcast.uberbar.configchanged"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    sget v0, Lcom/twidroid/y;->E:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_41

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->recreate()V

    :cond_3b
    :goto_3b
    return-void

    :catch_3c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15

    :cond_41
    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->finish()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twidroid/TwidroidClient;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->startActivity(Landroid/content/Intent;)V

    goto :goto_3b

    :cond_4f
    const-string v0, "ubersocial.broadcast.uberbar.accountslistmodified"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->K()V

    :cond_5e
    const-string v0, "ubersocial.broadcast.uberbar.adduser"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/twidroid/fragments/e/at;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/twidroid/TwidroidClient;->e(Landroid/content/Intent;)V

    goto :goto_3b

    :cond_77
    const-string v0, "ubersocial.broadcast.uberbar.addlist"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/twidroid/fragments/e/ai;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/twidroid/TwidroidClient;->g(Landroid/content/Intent;)V

    goto :goto_3b

    :cond_90
    const-string v0, "ubersocial.broadcast.uberbar.removelist"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/twidroid/fragments/e/ai;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/twidroid/TwidroidClient;->f(Landroid/content/Intent;)V

    goto :goto_3b

    :cond_a9
    const-string v0, "ubersocial.broadcast.uberbar.viewlist"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d3

    :try_start_b5
    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->J()Lcom/twidroid/fragments/a/c;

    move-result-object v0

    const-string v1, "ubersocial.broadcast.uberbar.viewlist"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/a/c;->a(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3b

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->ac:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_cb} :catch_cd

    goto/16 :goto_3b

    :catch_cd
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3b

    :cond_d3
    sget-object v0, Lcom/twidroid/TwidroidClient;->l:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e8

    const-string v0, "TwidroidClient"

    const-string v1, "Broadcast for Timeline update received"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3b

    :cond_e8
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_115

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "single_tweet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f4

    const/4 v0, 0x0

    const-string v1, "tweet_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/twidroid/d/a;->a(Lcom/twidroid/model/twitter/Tweet;JLandroid/app/Activity;Landroid/support/v4/app/FragmentManager;Z)V

    const-string v0, "open_from_notification"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_110
    :goto_110
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_115
    const-string v0, "Action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b6

    const-string v0, "Action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "EXTRA_ACTION_RESTART"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_164

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->d()V

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->h()V

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/twidroid/TwidroidClient;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x800

    invoke-static {v2, v5, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v6, 0x1f4

    add-long/2addr v3, v6

    invoke-virtual {v0, v8, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    iput-boolean v8, p0, Lcom/twidroid/TwidroidClient;->ak:Z

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->finish()V

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    :cond_164
    const-string v0, "search"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18c

    const-string v0, "search"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->G()V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "ubersocial.broadcast.start.search"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "search"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_18c
    const-string v0, "splashscreen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a0

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/twidroid/activity/UberSocialSplash;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2}, Lcom/twidroid/TwidroidClient;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1a0
    const-string v0, "exit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ab

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->I()V

    :cond_1ab
    const-string v0, "refresh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b6

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->f()V

    :cond_1b6
    const-string v0, "TabName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_212

    const-string v0, "TabName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabName"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->J()Lcom/twidroid/fragments/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twidroid/fragments/a/c;->a(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_20b

    const-string v1, "TwidroidClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tab with tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not found"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3b

    :cond_1f4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_110

    const-string v0, "user_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/twidroid/d/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_110

    :cond_20b
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ac:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0, v0, v1, v8}, Lcom/twidroid/TwidroidClient;->a(Landroid/support/v4/view/ViewPager;IZ)V

    goto/16 :goto_3b

    :cond_212
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22f

    const-string v0, "EXTRA_UPDATE_MESSAGEINDICATORS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22c

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "twidroid.broadcast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22f

    :cond_22c
    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->O()V

    :cond_22f
    const-string v0, "Action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v0, "TabName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto/16 :goto_3b
.end method

.method public d()V
    .registers 4

    const v2, 0x7f0900ed

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ah:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->H:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ah:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->H:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    :goto_14
    return-void

    :cond_15
    invoke-virtual {p0, v2}, Lcom/twidroid/TwidroidClient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {p0, v2}, Lcom/twidroid/TwidroidClient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->X()V

    :cond_31
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ah:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->H:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    goto :goto_14
.end method

.method public d(I)V
    .registers 5

    const-string v0, "TwidroidClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Progress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_e3

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file:///android_asset/themes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4a

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "go.td.cx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4a

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://twidroydfactory.appspot.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4a

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "twidroydtheme://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5f

    :cond_4a
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "twidroydtheme://"

    const-string v3, "http://"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-static {p0, v1, v2}, Lcom/twidroid/ui/themes/o;->a(Landroid/content/Context;Ljava/lang/String;Lcom/twidroid/UberSocialApplication;)V

    :cond_5f
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_8a

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8a

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "twitter.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8a

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twidroid/TwidroidClient;->a(Ljava/lang/String;)V

    :cond_8a
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_e3

    const-string v1, "EXTRA_THEME_SUBPACKAGE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e3

    const-string v1, "TwidroidClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Select Theme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "EXTRA_THEME_SUBPACKAGE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    const-string v2, "EXTRA_THEME_SUBPACKAGE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twidroid/UberSocialApplication;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e3

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->aa:Lcom/twidroid/ui/c/g;

    invoke-virtual {v1, p0}, Lcom/twidroid/ui/c/g;->b(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->ai:Lcom/twidroid/ui/a/af;

    if-eqz v1, :cond_d6

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->ai:Lcom/twidroid/ui/a/af;

    invoke-virtual {v1}, Lcom/twidroid/ui/a/af;->a()V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/twidroid/TwidroidClient;->h(Z)V

    :cond_d6
    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->E()V

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/twidroid/TwidroidClient;->k:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/twidroid/TwidroidClient;->sendBroadcast(Landroid/content/Intent;)V

    :cond_e3
    if-eqz v0, :cond_101

    :try_start_e5
    const-string v1, "twidroid.timestamp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ed

    :cond_ed
    const-string v1, "twidroid.open_tweet_box"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f9

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/twidroid/TwidroidClient;->d(Z)V

    :cond_f9
    const-string v1, "tweet_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_101

    :cond_101
    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/twidroid/d/v;->o(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_118

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/twidroid/d/v;->a(Landroid/content/Context;J)V
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_118} :catch_119

    :cond_118
    :goto_118
    return-void

    :catch_119
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_118
.end method

.method public d(Z)V
    .registers 4

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "showTweetBox not implemented"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e(I)Ljava/lang/CharSequence;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/twidroid/TwidroidClient;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .registers 1

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->O()V

    return-void
.end method

.method public e(Landroid/content/Intent;)V
    .registers 9

    const/4 v2, 0x0

    if-nez p1, :cond_4

    :goto_3
    return-void

    :cond_4
    const-string v3, ""

    const/4 v1, 0x0

    const-string v0, ""

    const-string v4, "EXTRA_USER"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_df

    const-string v0, "EXTRA_USER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/User;

    const-string v3, "TwidroidClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCREEN_NAME1: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_d8

    iget-object v1, v0, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;

    if-eqz v1, :cond_d8

    iget-object v1, v0, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;

    :goto_2e
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/twidroid/ui/c/i;

    new-instance v1, Lcom/twidroid/fragments/e/at;

    iget-object v4, p0, Lcom/twidroid/TwidroidClient;->X:Lcom/twidroid/model/twitter/c;

    iget-object v5, v0, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Lcom/twidroid/fragments/e/at;-><init>(Lcom/twidroid/model/twitter/c;Ljava/lang/String;)V

    invoke-direct {v3, v1, v0}, Lcom/twidroid/ui/c/i;-><init>(Lcom/twidroid/fragments/base/o;Lcom/twidroid/model/twitter/User;)V

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->ai:Lcom/twidroid/ui/a/af;

    invoke-virtual {v1}, Lcom/twidroid/ui/a/af;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v4, v1, -0x7

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v1}, Lcom/twidroid/d/v;->aV()Z

    move-result v1

    if-eqz v1, :cond_dc

    move v1, v2

    :goto_5a
    sub-int v1, v4, v1

    iget-object v4, p0, Lcom/twidroid/TwidroidClient;->ai:Lcom/twidroid/ui/a/af;

    invoke-virtual {v4, v3, v1}, Lcom/twidroid/ui/a/af;->a(Lcom/twidroid/ui/c/h;I)V

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->ai:Lcom/twidroid/ui/a/af;

    invoke-virtual {v1}, Lcom/twidroid/ui/a/af;->notifyDataSetChanged()V

    iget-object v1, v0, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/User;->h()Ljava/lang/String;

    move-result-object v0

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    :cond_6f
    :goto_6f
    invoke-virtual {v1, v3}, Lcom/twidroid/ui/c/i;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/twidroid/ui/c/i;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/twidroid/ui/c/i;->a(Z)V

    invoke-virtual {v1, v2}, Lcom/twidroid/ui/c/i;->b(Z)V

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/c/i;->c(Ljava/lang/String;)Lcom/twidroid/ui/c/h;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/c/i;->b(I)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->aa:Lcom/twidroid/ui/c/g;

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/c/g;->b(Lcom/twidroid/ui/c/h;)Z

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->aa:Lcom/twidroid/ui/c/g;

    invoke-virtual {v0}, Lcom/twidroid/ui/c/g;->c()V

    new-instance v0, Lcom/twidroid/fragments/a/d;

    invoke-direct {v0}, Lcom/twidroid/fragments/a/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/a/d;->a(Lcom/twidroid/ui/c/h;)V

    invoke-virtual {v0, v3}, Lcom/twidroid/fragments/a/d;->a(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->J()Lcom/twidroid/fragments/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/fragments/a/c;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/a/d;->b(I)V

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->J()Lcom/twidroid/fragments/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twidroid/fragments/a/c;->a(Lcom/twidroid/fragments/a/d;)V

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->J()Lcom/twidroid/fragments/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/fragments/a/c;->notifyDataSetChanged()V

    const v0, 0x7f0901b8

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-virtual {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->c()V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ac:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->J()Lcom/twidroid/fragments/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/fragments/a/c;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    const v0, 0x7f0c0327

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    :cond_d8
    const-string v1, ""

    goto/16 :goto_2e

    :cond_dc
    const/4 v1, 0x1

    goto/16 :goto_5a

    :cond_df
    const-string v4, "EXTRA_USERNAME"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6f

    const-string v3, "EXTRA_USERNAME"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6f

    const-string v1, "TwidroidClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SCREEN_NAME2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/twidroid/ui/c/i;

    new-instance v4, Lcom/twidroid/fragments/e/at;

    iget-object v5, p0, Lcom/twidroid/TwidroidClient;->X:Lcom/twidroid/model/twitter/c;

    invoke-direct {v4, v5, v3}, Lcom/twidroid/fragments/e/at;-><init>(Lcom/twidroid/model/twitter/c;Ljava/lang/String;)V

    invoke-direct {v1, v4, v3}, Lcom/twidroid/ui/c/i;-><init>(Lcom/twidroid/fragments/base/o;Ljava/lang/String;)V

    goto/16 :goto_6f
.end method

.method public e(Z)V
    .registers 2

    if-eqz p1, :cond_2

    :cond_2
    return-void
.end method

.method f()V
    .registers 4

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "timelines.refresh"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public f(I)V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ad:Lcom/twidroid/ui/widgets/AccountSpinner;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/ui/widgets/AccountSpinner;->setAccountByAccountId(J)V

    return-void
.end method

.method public f(Landroid/content/Intent;)V
    .registers 8

    const/4 v4, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    const-string v0, ""

    const-string v1, "EXTRA_LIST_URI"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    const-string v0, "EXTRA_LIST_URI"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_15
    move v3, v4

    :goto_16
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->aa:Lcom/twidroid/ui/c/g;

    invoke-virtual {v0}, Lcom/twidroid/ui/c/g;->b()I

    move-result v0

    if-ge v3, v0, :cond_3

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->aa:Lcom/twidroid/ui/c/g;

    invoke-virtual {v0, v3}, Lcom/twidroid/ui/c/g;->a(I)Lcom/twidroid/ui/c/h;

    move-result-object v1

    const/4 v0, 0x2

    invoke-virtual {v1}, Lcom/twidroid/ui/c/h;->j()I

    move-result v5

    if-ne v0, v5, :cond_4b

    move-object v0, v1

    check-cast v0, Lcom/twidroid/ui/c/e;

    invoke-virtual {v0}, Lcom/twidroid/ui/c/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->aa:Lcom/twidroid/ui/c/g;

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/c/g;->c(Lcom/twidroid/ui/c/h;)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->aa:Lcom/twidroid/ui/c/g;

    invoke-virtual {v0}, Lcom/twidroid/ui/c/g;->c()V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ai:Lcom/twidroid/ui/a/af;

    invoke-virtual {v0}, Lcom/twidroid/ui/a/af;->a()V

    invoke-direct {p0, v4}, Lcom/twidroid/TwidroidClient;->h(Z)V

    goto :goto_3

    :cond_4b
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_16

    :cond_4f
    move-object v2, v0

    goto :goto_15
.end method

.method public g()V
    .registers 8

    const/4 v1, 0x0

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/twidroid/service/BackgroundService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->h()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->w()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    mul-int/lit8 v0, v0, 0x3c

    int-to-long v4, v0

    add-long/2addr v2, v4

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->d()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->w()I

    move-result v0

    const/16 v4, 0x2710

    if-lt v0, v4, :cond_51

    :cond_45
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->B()I

    move-result v0

    if-lez v0, :cond_d8

    :cond_51
    if-nez v6, :cond_5a

    const-string v0, "TwidroidClient"

    const-string v4, "::startBackgroundService alarmSender is NULL"

    invoke-static {v0, v4}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5a
    const-string v0, "TwidroidClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::startBackgroundService interval: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v5}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twidroid/d/v;->w()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v4, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v4}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twidroid/d/v;->w()I

    move-result v4

    const/16 v5, 0xf

    if-eq v4, v5, :cond_bc

    iget-object v4, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v4}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twidroid/d/v;->w()I

    move-result v4

    const/16 v5, 0x1e

    if-eq v4, v5, :cond_bc

    iget-object v4, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v4}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twidroid/d/v;->w()I

    move-result v4

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_bc

    iget-object v4, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v4}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twidroid/d/v;->w()I

    move-result v4

    const/16 v5, 0x5a0

    if-ne v4, v5, :cond_d9

    :cond_bc
    const-string v4, "TwidroidClient"

    const-string v5, "using inexact repeating to save power"

    invoke-static {v4, v5}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v4}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twidroid/d/v;->w()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    mul-int/lit8 v4, v4, 0x3c

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    :goto_d5
    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->i()V

    :cond_d8
    return-void

    :cond_d9
    iget-object v4, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v4}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twidroid/d/v;->w()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    mul-int/lit8 v4, v4, 0x3c

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    const-string v0, "TwidroidClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Background service interval time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/d/v;->w()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    mul-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d5
.end method

.method public g(Landroid/content/Intent;)V
    .registers 8

    const/4 v1, 0x0

    if-nez p1, :cond_4

    :goto_3
    return-void

    :cond_4
    const-string v0, ""

    const-string v2, "EXTRA_LIST_URI"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v0, "EXTRA_LIST_URI"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_14
    new-instance v2, Lcom/twidroid/ui/c/e;

    new-instance v3, Lcom/twidroid/fragments/e/ai;

    iget-object v4, p0, Lcom/twidroid/TwidroidClient;->X:Lcom/twidroid/model/twitter/c;

    invoke-direct {v3, v4, v0}, Lcom/twidroid/fragments/e/ai;-><init>(Lcom/twidroid/model/twitter/c;Ljava/lang/String;)V

    invoke-direct {v2, v3, v0}, Lcom/twidroid/ui/c/e;-><init>(Lcom/twidroid/fragments/base/o;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/twidroid/ui/c/e;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/twidroid/ui/c/e;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/twidroid/ui/c/e;->a(Z)V

    invoke-virtual {v2, v1}, Lcom/twidroid/ui/c/e;->b(Z)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/twidroid/ui/c/e;->b(I)V

    invoke-virtual {v2}, Lcom/twidroid/ui/c/e;->f()Lcom/twidroid/fragments/base/o;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/twidroid/fragments/base/o;->h(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/twidroid/TwidroidClient;->ae:Landroid/content/res/Resources;

    const v4, 0x7f020078

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twidroid/ui/c/e;->a(Landroid/graphics/drawable/Drawable;)Lcom/twidroid/ui/c/h;

    iget-object v3, p0, Lcom/twidroid/TwidroidClient;->ai:Lcom/twidroid/ui/a/af;

    invoke-virtual {v3}, Lcom/twidroid/ui/a/af;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v3, v3, -0x7

    iget-object v4, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v4}, Lcom/twidroid/d/v;->aV()Z

    move-result v4

    if-eqz v4, :cond_b5

    :goto_60
    sub-int v1, v3, v1

    iget-object v3, p0, Lcom/twidroid/TwidroidClient;->ai:Lcom/twidroid/ui/a/af;

    invoke-virtual {v3, v2, v1}, Lcom/twidroid/ui/a/af;->a(Lcom/twidroid/ui/c/h;I)V

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->ai:Lcom/twidroid/ui/a/af;

    invoke-virtual {v1}, Lcom/twidroid/ui/a/af;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->aa:Lcom/twidroid/ui/c/g;

    invoke-virtual {v1, v2}, Lcom/twidroid/ui/c/g;->b(Lcom/twidroid/ui/c/h;)Z

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->aa:Lcom/twidroid/ui/c/g;

    invoke-virtual {v1}, Lcom/twidroid/ui/c/g;->c()V

    new-instance v1, Lcom/twidroid/fragments/a/d;

    invoke-direct {v1}, Lcom/twidroid/fragments/a/d;-><init>()V

    invoke-virtual {v1, v2}, Lcom/twidroid/fragments/a/d;->a(Lcom/twidroid/ui/c/h;)V

    invoke-virtual {v1, v0}, Lcom/twidroid/fragments/a/d;->a(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->J()Lcom/twidroid/fragments/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/fragments/a/c;->getCount()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/twidroid/fragments/a/d;->b(I)V

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->J()Lcom/twidroid/fragments/a/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/a/c;->a(Lcom/twidroid/fragments/a/d;)V

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->J()Lcom/twidroid/fragments/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/fragments/a/c;->notifyDataSetChanged()V

    const v0, 0x7f0901b8

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-virtual {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->c()V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ac:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->J()Lcom/twidroid/fragments/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/fragments/a/c;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_3

    :cond_b5
    const/4 v1, 0x1

    goto :goto_60
.end method

.method public h()V
    .registers 4

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twidroid/service/BackgroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_22

    invoke-static {p0, v0}, Lcom/twidroid/d/p;->a(Landroid/content/Context;[I)V

    return-void

    nop

    :array_22
    .array-data 0x4
        0x62t 0x1t 0xct 0x7ft
        0x63t 0x1t 0xct 0x7ft
        0x64t 0x1t 0xct 0x7ft
    .end array-data
.end method

.method i()V
    .registers 8

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->N()Z

    move-result v0

    if-eqz v0, :cond_4d

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twidroid/TwidroidClient;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "forcerefresh"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f02016d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v3, v6, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const v3, 0x7f0c0302

    invoke-virtual {p0, v3}, Lcom/twidroid/TwidroidClient;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, p0, v3, v6, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v1, 0x22

    iput v1, v2, Landroid/app/Notification;->flags:I

    const v1, 0x7f0c0164

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_4d
    return-void
.end method

.method public j()V
    .registers 3

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x7f0c0162

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const v1, 0x7f0c0163

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const v1, 0x7f0c0164

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/d/v;->ai()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    :cond_29
    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->i()V

    return-void
.end method

.method protected k()V
    .registers 4

    const v2, 0x7f0900f2

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->aV()Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/twidroid/TwidroidClient;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->a(Landroid/view/Display;)V

    :goto_24
    return-void

    :cond_25
    invoke-virtual {p0, v2}, Lcom/twidroid/TwidroidClient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_24
.end method

.method public l()V
    .registers 3

    const v0, 0x7f0901b9

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/twidroid/TwidroidClient;->ac:Landroid/support/v4/view/ViewPager;

    new-instance v0, Lcom/twidroid/ui/a/af;

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/twidroid/ui/a/af;-><init>(Lcom/twidroid/net/c/a/f;Lcom/twidroid/ui/themes/r;)V

    iput-object v0, p0, Lcom/twidroid/TwidroidClient;->ai:Lcom/twidroid/ui/a/af;

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->H:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->ai:Lcom/twidroid/ui/a/af;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->j()Lcom/twidroid/ui/c/g;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/TwidroidClient;->aa:Lcom/twidroid/ui/c/g;

    return-void
.end method

.method public m()Lcom/twidroid/fragments/base/o;
    .registers 3

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->J()Lcom/twidroid/fragments/a/c;

    move-result-object v0

    iget v1, p0, Lcom/twidroid/TwidroidClient;->ab:I

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/a/c;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/base/o;

    return-object v0
.end method

.method public n()V
    .registers 4

    const-string v0, "TwidroidClient"

    const-string v1, "Sending scrollToTop broadcast"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "timelines.jumptotop"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public o()V
    .registers 1

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    const/16 v0, 0x64

    if-ne p1, v0, :cond_32

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->ae()V

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->Q()V

    new-instance v0, Lcom/twidroid/TwidroidClient$37;

    invoke-direct {v0, p0}, Lcom/twidroid/TwidroidClient$37;-><init>(Lcom/twidroid/TwidroidClient;)V

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/twidroid/TwidroidClient;->l:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/twidroid/service/MuteSyncService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_32
    const/16 v0, 0x54

    if-ne p1, v0, :cond_63

    const/4 v0, -0x1

    if-ne p2, v0, :cond_63

    :try_start_39
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twidroid/activity/SendTweet;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "EXTRA_ACCOUNT_ID"

    iget-object v3, p0, Lcom/twidroid/TwidroidClient;->ad:Lcom/twidroid/ui/widgets/AccountSpinner;

    invoke-virtual {v3}, Lcom/twidroid/ui/widgets/AccountSpinner;->getCurrentAccountId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/twidroid/TwidroidClient;->startActivity(Landroid/content/Intent;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_63} :catch_85

    :cond_63
    :goto_63
    const/16 v0, 0x2fd

    if-ne p1, v0, :cond_6a

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->f()V

    :cond_6a
    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_81

    const-string v0, "TwidroidClient"

    const-string v1, "Reauthentcation complete"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->Q()V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ad:Lcom/twidroid/ui/widgets/AccountSpinner;

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ad:Lcom/twidroid/ui/widgets/AccountSpinner;

    invoke-virtual {v0}, Lcom/twidroid/ui/widgets/AccountSpinner;->a()V

    :cond_81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twidroid/TwidroidClient;->F:Z

    return-void

    :catch_85
    move-exception v0

    goto :goto_63
.end method

.method public onBackPressed()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ah:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->H:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ah:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->H:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ac:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_21

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ac:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_11

    :cond_21
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onBackPressed()V

    goto :goto_11
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->y()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twidroid/TwidroidClient;->av:Z

    iget-boolean v0, p0, Lcom/twidroid/TwidroidClient;->av:Z

    if-eqz v0, :cond_1c

    sget v0, Lcom/twidroid/y;->E:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1d

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->recreate()V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twidroid/TwidroidClient;->as:Z

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->finish()V

    goto :goto_1c
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Lcom/twidroid/TwidroidClient$1;

    invoke-direct {v0, p0}, Lcom/twidroid/TwidroidClient$1;-><init>(Lcom/twidroid/TwidroidClient;)V

    iput-object v0, p0, Lcom/twidroid/TwidroidClient;->ar:Lcom/ubermedia/b/f;

    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/a/a/e;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/twidroid/UberSocialApplication;->a(Landroid/app/Activity;)Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/TwidroidClient;->U:Lcom/twidroid/b/a/b;

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->U:Lcom/twidroid/b/a/b;

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/TwidroidClient;->X:Lcom/twidroid/model/twitter/c;

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->aP()Z

    move-result v0

    if-eqz v0, :cond_40

    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/twidroid/service/StreamingService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_40
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->X:Lcom/twidroid/model/twitter/c;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->X:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->d()Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0, v1}, Lcom/twidroid/UberSocialApplication;->a(Z)V

    :cond_51
    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->z()V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-static {v0}, Lcom/twidroid/net/k;->a(Landroid/app/Application;)V

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0045

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/twidroid/TwidroidClient;->t:I

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0047

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/twidroid/TwidroidClient;->u:I

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->i()Z

    move-result v0

    if-nez v0, :cond_97

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->aV()Z

    move-result v0

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->aT()Z

    move-result v0

    if-nez v0, :cond_24b

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ar:Lcom/ubermedia/b/f;

    invoke-static {p0, v0}, Lcom/ubermedia/b/d;->a(Landroid/app/Activity;Lcom/ubermedia/b/f;)Lcom/ubermedia/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/TwidroidClient;->aq:Lcom/ubermedia/b/g;

    :cond_97
    :goto_97
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    if-eqz v0, :cond_25f

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->i()Z

    move-result v0

    :goto_a1
    sput-boolean v0, Lcom/twidroid/model/twitter/CommunicationEntity;->a:Z

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/TwidroidClient;->ae:Landroid/content/res/Resources;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/twidroid/TwidroidClient;->G:Landroid/os/Handler;

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/widget/o;->c()V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->cu()Z

    move-result v0

    if-nez v0, :cond_d7

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-static {p0}, Lcom/twidroid/d/v;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_cd

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->W()Z

    move-result v0

    if-eqz v0, :cond_d7

    :cond_cd
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0, v2}, Lcom/twidroid/d/v;->a(Z)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0, v2}, Lcom/twidroid/d/v;->m(Z)V

    :cond_d7
    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->B()V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-direct {p0, v0}, Lcom/twidroid/TwidroidClient;->a(Lcom/twidroid/UberSocialApplication;)V

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v3, 0x7f0900ec

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->D()V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-static {p0, v0}, Lcom/twidroid/d/l;->a(Landroid/app/Activity;Lcom/twidroid/UberSocialApplication;)V

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->l()V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->U:Lcom/twidroid/b/a/b;

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->i()Z

    move-result v0

    if-nez v0, :cond_10c

    invoke-direct {p0, v1}, Lcom/twidroid/TwidroidClient;->h(Z)V

    :cond_10c
    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->d(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->M()V

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->A()V

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->E()V

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->C()V

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->k()V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->X()V

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->v()V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-static {v0}, Lcom/twidroid/d/t;->b(Lcom/twidroid/UberSocialApplication;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_147

    const-string v3, "config/theme"

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "active"

    aput-object v5, v4, v1

    aput-object v0, v4, v2

    invoke-static {v4}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_147
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ax:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    sget-object v4, Lcom/twidroid/activity/UberSocialAccount;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Lcom/twidroid/TwidroidClient;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/twidroid/TwidroidClient$12;

    invoke-direct {v0, p0}, Lcom/twidroid/TwidroidClient$12;-><init>(Lcom/twidroid/TwidroidClient;)V

    new-array v3, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v3}, Lcom/twidroid/TwidroidClient$12;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    new-instance v0, Lcom/twidroid/billing/BillingService;

    invoke-direct {v0}, Lcom/twidroid/billing/BillingService;-><init>()V

    iput-object v0, p0, Lcom/twidroid/TwidroidClient;->Y:Lcom/twidroid/billing/BillingService;

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->Y:Lcom/twidroid/billing/BillingService;

    invoke-virtual {v0, p0}, Lcom/twidroid/billing/BillingService;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/twidroid/w;

    iget-object v3, p0, Lcom/twidroid/TwidroidClient;->G:Landroid/os/Handler;

    invoke-direct {v0, p0, v3}, Lcom/twidroid/w;-><init>(Lcom/twidroid/TwidroidClient;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/twidroid/TwidroidClient;->Z:Lcom/twidroid/w;

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->Z:Lcom/twidroid/w;

    invoke-static {v0}, Lcom/twidroid/billing/k;->a(Lcom/twidroid/billing/j;)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->Y:Lcom/twidroid/billing/BillingService;

    const-string v3, "inapp"

    invoke-virtual {v0, v3}, Lcom/twidroid/billing/BillingService;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_188

    const-string v0, "TwidroidClient"

    const-string v3, "Billing can not connect"

    invoke-static {v0, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_188
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    const-string v3, "showThemeWarnDialog"

    invoke-virtual {v0, v3}, Lcom/twidroid/d/v;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a3

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    const-string v3, "showThemeWarnDialog"

    invoke-virtual {v0, v3, v1}, Lcom/twidroid/d/v;->a(Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/twidroid/activity/PremiumThemeFoundActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->startActivity(Landroid/content/Intent;)V

    :cond_1a3
    const-string v0, "config/videogallery"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "enabled"

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/twidroid/TwidroidClient;->aa:Lcom/twidroid/ui/c/g;

    const-class v5, Lcom/twidroid/fragments/e/av;

    invoke-virtual {v4, v5}, Lcom/twidroid/ui/c/g;->a(Ljava/lang/Class;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v3}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "config/is_tablet"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "tablet"

    aput-object v4, v3, v1

    invoke-static {p0}, Lcom/twidroid/d/v;->a(Landroid/app/Activity;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v3}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->U:Lcom/twidroid/b/a/b;

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v0

    if-eqz v0, :cond_236

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->U:Lcom/twidroid/b/a/b;

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->d()Z

    move-result v0

    if-eqz v0, :cond_236

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->cp()I

    move-result v0

    const/4 v3, -0x1

    if-le v0, v3, :cond_236

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->U:Lcom/twidroid/b/a/b;

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->o()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v3, "config/streaming_testgroup"

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "testgroup"

    aput-object v5, v4, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v5, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v5}, Lcom/twidroid/d/v;->cp()I

    move-result v5

    if-gt v0, v5, :cond_229

    move v1, v2

    :cond_229
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v4}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_236
    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->x()V

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->w()V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/twidroid/service/MuteSyncService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_24b
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->aU()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_97

    const v0, 0x474f544f

    invoke-static {p0, v0}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V

    goto/16 :goto_97

    :cond_25f
    move v0, v1

    goto/16 :goto_a1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6

    sparse-switch p1, :sswitch_data_a2

    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    :sswitch_8
    const v0, 0x7f0c00e5

    new-instance v1, Lcom/twidroid/TwidroidClient$14;

    invoke-direct {v1, p0}, Lcom/twidroid/TwidroidClient$14;-><init>(Lcom/twidroid/TwidroidClient;)V

    new-instance v2, Lcom/twidroid/TwidroidClient$15;

    invoke-direct {v2, p0}, Lcom/twidroid/TwidroidClient$15;-><init>(Lcom/twidroid/TwidroidClient;)V

    invoke-static {p0, v0, v1, v2}, Lcom/twidroid/c/l;->b(Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    :sswitch_1a
    const v0, 0x7f0c00e4

    new-instance v1, Lcom/twidroid/TwidroidClient$16;

    invoke-direct {v1, p0}, Lcom/twidroid/TwidroidClient$16;-><init>(Lcom/twidroid/TwidroidClient;)V

    new-instance v2, Lcom/twidroid/TwidroidClient$17;

    invoke-direct {v2, p0}, Lcom/twidroid/TwidroidClient$17;-><init>(Lcom/twidroid/TwidroidClient;)V

    invoke-static {p0, v0, v1, v2}, Lcom/twidroid/c/l;->a(Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/twidroid/TwidroidClient$18;

    invoke-direct {v1, p0}, Lcom/twidroid/TwidroidClient$18;-><init>(Lcom/twidroid/TwidroidClient;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_7

    :sswitch_34
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0225

    invoke-virtual {p0, v1}, Lcom/twidroid/TwidroidClient;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v1, Lcom/twidroid/TwidroidClient$19;

    invoke-direct {v1, p0}, Lcom/twidroid/TwidroidClient$19;-><init>(Lcom/twidroid/TwidroidClient;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f020067

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0226

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0228

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c002c

    new-instance v3, Lcom/twidroid/TwidroidClient$21;

    invoke-direct {v3, p0}, Lcom/twidroid/TwidroidClient$21;-><init>(Lcom/twidroid/TwidroidClient;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0029

    new-instance v3, Lcom/twidroid/TwidroidClient$20;

    invoke-direct {v3, p0}, Lcom/twidroid/TwidroidClient$20;-><init>(Lcom/twidroid/TwidroidClient;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_7

    :sswitch_91
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-static {p0, v0}, Lcom/twidroid/c/l;->a(Landroid/content/Context;Lcom/twidroid/d/v;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_7

    :sswitch_99
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-static {p0, v0}, Lcom/twidroid/c/l;->a(Lcom/twidroid/TwidroidClient;Lcom/twidroid/UberSocialApplication;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_7

    nop

    :sswitch_data_a2
    .sparse-switch
        0x2b4 -> :sswitch_34
        0x1d97c -> :sswitch_91
        0x1d97e -> :sswitch_99
        0x474f544f -> :sswitch_1a
        0x52455452 -> :sswitch_8
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 10

    const v7, 0x7f0c01ae

    const v6, 0x7f0c01a8

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x2

    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->bv()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twidroid/ui/themes/r;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    const v0, 0x7f0c02ee

    const v1, 0x7f0c02ee

    invoke-interface {p1, v4, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02012d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-static {v0, v1}, Lcom/twidroid/d/t;->a(Landroid/view/MenuItem;Lcom/twidroid/UberSocialApplication;)V

    :cond_35
    const v0, 0x7f0c01bc

    const v1, 0x7f0c01bc

    invoke-interface {p1, v4, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02012a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    const-string v1, "ic_menu_tweet"

    iget-object v2, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-static {v0, v1, v2, p0}, Lcom/twidroid/d/t;->a(Landroid/view/MenuItem;Ljava/lang/String;Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->W()Z

    move-result v0

    if-nez v0, :cond_6c

    const/4 v0, 0x3

    invoke-interface {p1, v4, v6, v0, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02011d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    const-string v1, "ic_menu_photo"

    iget-object v2, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-static {v0, v1, v2, p0}, Lcom/twidroid/d/t;->a(Landroid/view/MenuItem;Ljava/lang/String;Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;)V

    :cond_6c
    const v0, 0x7f0c01d3

    const/4 v1, 0x4

    const v2, 0x7f0c01d3

    invoke-interface {p1, v4, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020122

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    const-string v1, "ic_menu_search"

    iget-object v2, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-static {v0, v1, v2, p0}, Lcom/twidroid/d/t;->a(Landroid/view/MenuItem;Ljava/lang/String;Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;)V

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-interface {p1, v0, v7, v1, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020106

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return v5
.end method

.method public onDestroy()V
    .registers 4

    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onDestroy()V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/twidroid/service/MuteSyncService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->aq:Lcom/ubermedia/b/g;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->aq:Lcom/ubermedia/b/g;

    invoke-virtual {v0}, Lcom/ubermedia/b/g;->a()Lcom/google/android/a/a/k;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->aq:Lcom/ubermedia/b/g;

    invoke-virtual {v0}, Lcom/ubermedia/b/g;->a()Lcom/google/android/a/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/a/a/k;->a()V

    :cond_26
    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->N()V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ax:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->Y:Lcom/twidroid/billing/BillingService;

    invoke-virtual {v0}, Lcom/twidroid/billing/BillingService;->c()V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->an:Lcom/twidroid/net/b/f;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->an:Lcom/twidroid/net/b/f;

    invoke-virtual {v0}, Lcom/twidroid/net/b/f;->i()V

    :cond_3c
    iget-boolean v0, p0, Lcom/twidroid/TwidroidClient;->as:Z

    if-eqz v0, :cond_4e

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/twidroid/TwidroidClient;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->startActivity(Landroid/content/Intent;)V

    :cond_4e
    return-void
.end method

.method public onLowMemory()V
    .registers 2

    invoke-static {}, Lcom/twidroid/e/b;->a()Lcom/twidroid/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/e/b;->b()V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->k()Lcom/twidroid/net/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/net/b/a;->c()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 4

    const-string v0, "TwidroidClient"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/twidroid/TwidroidClient;->d(Landroid/content/Intent;)V

    if-eqz p1, :cond_f

    invoke-virtual {p0, p1}, Lcom/twidroid/TwidroidClient;->c(Landroid/content/Intent;)V

    :cond_f
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->F()V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-eq v1, v2, :cond_13

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-nez v1, :cond_17

    :cond_13
    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->d()V

    :goto_16
    return v0

    :cond_17
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_7a

    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_16

    :sswitch_23
    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->G()V

    goto :goto_16

    :sswitch_27
    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->b()Lcom/twidroid/ui/themes/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/ui/themes/a/b;->l()V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twidroid/activity/SendTweet;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "EXTRA_ACCOUNT_ID"

    iget-object v3, p0, Lcom/twidroid/TwidroidClient;->ad:Lcom/twidroid/ui/widgets/AccountSpinner;

    invoke-virtual {v3}, Lcom/twidroid/ui/widgets/AccountSpinner;->getCurrentAccountId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/twidroid/TwidroidClient;->startActivity(Landroid/content/Intent;)V

    goto :goto_16

    :sswitch_46
    const-string v1, "menu"

    const-string v2, "photoIconPressed"

    invoke-static {v1, v2}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->H()Lcom/twidroid/model/twitter/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->a()Z

    move-result v1

    if-eqz v1, :cond_65

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v1}, Lcom/twidroid/d/v;->ch()Z

    move-result v1

    if-nez v1, :cond_65

    const/16 v1, 0x2b4

    invoke-static {p0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V

    goto :goto_16

    :cond_65
    const-string v1, ".photo"

    invoke-virtual {p0, v1}, Lcom/twidroid/TwidroidClient;->b(Ljava/lang/String;)V

    goto :goto_16

    :sswitch_6b
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twidroid/activity/DiscoveryActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/twidroid/TwidroidClient;->startActivity(Landroid/content/Intent;)V

    goto :goto_16

    :sswitch_76
    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->I()V

    goto :goto_16

    :sswitch_data_7a
    .sparse-switch
        0x7f0c01a8 -> :sswitch_46
        0x7f0c01ae -> :sswitch_76
        0x7f0c01bc -> :sswitch_27
        0x7f0c01d3 -> :sswitch_23
        0x7f0c02ee -> :sswitch_6b
    .end sparse-switch
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twidroid/TwidroidClient;->af:Z

    iget-boolean v0, p0, Lcom/twidroid/TwidroidClient;->ak:Z

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->g()V

    :cond_d
    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->S()V

    return-void
.end method

.method public onResume()V
    .registers 6

    const/16 v4, 0x64

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    iput-boolean v1, p0, Lcom/twidroid/TwidroidClient;->ak:Z

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->U:Lcom/twidroid/b/a/b;

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->i()Z

    move-result v0

    if-nez v0, :cond_27

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twidroid/activity/UberSocialSplash;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v4}, Lcom/twidroid/TwidroidClient;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_26
    return-void

    :cond_27
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->i()Z

    move-result v0

    if-eqz v0, :cond_90

    const-string v0, "TwidroidClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent skipSplash after search: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/twidroid/TwidroidClient;->E:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/twidroid/TwidroidClient;->E:Z

    if-nez v0, :cond_5e

    const-string v0, "TwidroidClient"

    const-string v2, "Intent will start splash"

    invoke-static {v0, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/twidroid/activity/UberSocialSplash;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v4}, Lcom/twidroid/TwidroidClient;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_5e
    :goto_5e
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    if-eqz v0, :cond_b7

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->W:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->i()Z

    move-result v0

    :goto_68
    sput-boolean v0, Lcom/twidroid/model/twitter/CommunicationEntity;->a:Z

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->c(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->j()V

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twidroid/TwidroidClient;->af:Z

    iget-boolean v0, p0, Lcom/twidroid/TwidroidClient;->ag:Z

    if-eqz v0, :cond_83

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->U()V

    iput-boolean v1, p0, Lcom/twidroid/TwidroidClient;->ag:Z

    :cond_83
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_ba

    invoke-static {p0, v0}, Lcom/twidroid/d/p;->a(Landroid/content/Context;[I)V

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->R()V

    goto :goto_26

    :cond_90
    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->Z()V

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->X()V

    iget-boolean v0, p0, Lcom/twidroid/TwidroidClient;->F:Z

    if-eqz v0, :cond_9f

    invoke-direct {p0, v1}, Lcom/twidroid/TwidroidClient;->h(Z)V

    iput-boolean v1, p0, Lcom/twidroid/TwidroidClient;->F:Z

    :cond_9f
    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->g()V

    iget v0, p0, Lcom/twidroid/TwidroidClient;->ab:I

    invoke-direct {p0, v0}, Lcom/twidroid/TwidroidClient;->g(I)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    iget-object v2, p0, Lcom/twidroid/TwidroidClient;->ad:Lcom/twidroid/ui/widgets/AccountSpinner;

    invoke-virtual {v2}, Lcom/twidroid/ui/widgets/AccountSpinner;->getCurrentAccountId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/twidroid/b/a/b;->h(I)Lcom/twidroid/model/twitter/c;

    goto :goto_5e

    :cond_b7
    move v0, v1

    goto :goto_68

    nop

    :array_ba
    .array-data 0x4
        0x62t 0x1t 0xct 0x7ft
        0x63t 0x1t 0xct 0x7ft
        0x64t 0x1t 0xct 0x7ft
    .end array-data
.end method

.method protected onStart()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    sput-boolean v4, Lcom/twidroid/TwidroidClient;->aC:Z

    :try_start_4
    const-class v0, Landroid/app/Activity;

    const-string v1, "mInstrumentation"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Instrumentation;

    const-string v1, "TwidroidClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Found instrumentation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/twidroid/TwidroidClient;->aA:Landroid/app/Instrumentation;

    if-nez v1, :cond_da

    sput-object v0, Lcom/twidroid/TwidroidClient;->aA:Landroid/app/Instrumentation;

    :cond_38
    :goto_38
    invoke-static {}, Lcom/twidroid/TwidroidClient;->t()V

    sget-object v0, Lcom/twidroid/TwidroidClient;->aA:Landroid/app/Instrumentation;

    if-nez v0, :cond_57

    const-string v0, "TwidroidClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find instrumentation in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_57} :catch_10d
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_57} :catch_128
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_57} :catch_143

    :cond_57
    :goto_57
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStart()V

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->y()V

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->V()V

    sget-object v0, Lcom/twidroid/y;->s:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/twidroid/net/a/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/twidroid/TwidroidClient;->av:Z

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/d/v;->y()Z

    move-result v1

    if-eq v0, v1, :cond_16d

    invoke-static {p0}, Lcom/ubermedia/b/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_16d

    sget v0, Lcom/twidroid/y;->E:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_15e

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->recreate()V

    :cond_82
    :goto_82
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->aw:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.ubersocial.networkerror"

    aput-object v2, v1, v4

    const-string v2, "com.ubersocial.info"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v3, "com.ubermedia.wax.action.chime_posted"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "com.ubermedia.wax.action.chime_hidden"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "broadcast.show.streaming.hint"

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/twidroid/net/a;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v0

    if-eqz v0, :cond_d4

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->d()Z

    move-result v0

    if-eqz v0, :cond_d4

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->V:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->ad()Z

    move-result v0

    if-eqz v0, :cond_d4

    new-instance v0, Lcom/twidroid/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twidroid/s;-><init>(Lcom/twidroid/TwidroidClient;Lcom/twidroid/TwidroidClient$1;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twidroid/s;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    :cond_d4
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->Z:Lcom/twidroid/w;

    invoke-static {v0}, Lcom/twidroid/billing/k;->a(Lcom/twidroid/billing/j;)V

    return-void

    :cond_da
    :try_start_da
    sget-object v1, Lcom/twidroid/TwidroidClient;->aA:Landroid/app/Instrumentation;

    if-eq v1, v0, :cond_38

    const-string v1, "TwidroidClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " different instrumentation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/twidroid/TwidroidClient;->aA:Landroid/app/Instrumentation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/twidroid/TwidroidClient;->u()V

    sput-object v0, Lcom/twidroid/TwidroidClient;->aA:Landroid/app/Instrumentation;
    :try_end_10b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_da .. :try_end_10b} :catch_10d
    .catch Ljava/lang/IllegalAccessException; {:try_start_da .. :try_end_10b} :catch_128
    .catch Ljava/lang/IllegalArgumentException; {:try_start_da .. :try_end_10b} :catch_143

    goto/16 :goto_38

    :catch_10d
    move-exception v0

    const-string v1, "TwidroidClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get the activity instrumentation in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_57

    :catch_128
    move-exception v0

    const-string v1, "TwidroidClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get the activity instrumentation in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_57

    :catch_143
    move-exception v0

    const-string v1, "TwidroidClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get the activity instrumentation in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_57

    :cond_15e
    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->finish()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twidroid/TwidroidClient;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_82

    :cond_16d
    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0900ec

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/twidroid/fragments/a;

    if-nez v1, :cond_82

    if-eqz v0, :cond_82

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_82
.end method

.method protected onStop()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ad:Lcom/twidroid/ui/widgets/AccountSpinner;

    invoke-virtual {v0}, Lcom/twidroid/ui/widgets/AccountSpinner;->e()V

    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStop()V

    invoke-static {p0}, Lcom/twidroid/net/a/a;->a(Landroid/content/Context;)V

    const-string v0, "TwidroidClient"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "ACTION_APP_CLOSED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :try_start_20
    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->aw:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v0}, Lcom/twidroid/net/a;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_25} :catch_2e

    :goto_25
    iget-boolean v0, p0, Lcom/twidroid/TwidroidClient;->ak:Z

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_2d
    return-void

    :catch_2e
    move-exception v0

    goto :goto_25
.end method

.method public p()V
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->J()Lcom/twidroid/fragments/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->ac:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/a/c;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/twidroid/fragments/e/g;

    if-nez v0, :cond_36

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->J()Lcom/twidroid/fragments/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->ac:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/a/c;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/twidroid/fragments/e/r;

    if-nez v0, :cond_36

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->J()Lcom/twidroid/fragments/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->ac:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/a/c;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/twidroid/fragments/e/c;

    if-eqz v0, :cond_60

    :cond_36
    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->J()Lcom/twidroid/fragments/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->ac:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/a/c;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/base/b;

    invoke-virtual {v0}, Lcom/twidroid/fragments/base/b;->K()V

    invoke-direct {p0}, Lcom/twidroid/TwidroidClient;->J()Lcom/twidroid/fragments/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/TwidroidClient;->ac:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/a/c;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/base/b;

    invoke-virtual {v0}, Lcom/twidroid/fragments/base/b;->i()Lcom/twidroid/ui/a/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->notifyDataSetChanged()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_60} :catch_61

    :cond_60
    :goto_60
    return-void

    :catch_61
    move-exception v0

    const-string v1, "TwidroidClient"

    const-string v2, "error redrawing current timeline"

    invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_60
.end method

.method public q()V
    .registers 1

    invoke-virtual {p0}, Lcom/twidroid/TwidroidClient;->p()V

    return-void
.end method

.method public r()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twidroid/TwidroidClient;->e(Z)V

    return-void
.end method

.method public s()Lcom/twidroid/ui/widgets/AccountSpinner;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/TwidroidClient;->ad:Lcom/twidroid/ui/widgets/AccountSpinner;

    return-object v0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .registers 4

    if-nez p1, :cond_e

    const-string v0, "TwidroidClient"

    const-string v1, "Intent blockers are not compatible with an Activity that has no intent set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    :cond_e
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_f

    invoke-static {p0, p1}, Lcom/twidroid/TwidroidClient;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/twidroid/TwidroidClient;->u()V

    :cond_f
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/twidroid/TwidroidClient;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/twidroid/TwidroidClient;->u()V

    :cond_9
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/ActionBarActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method
