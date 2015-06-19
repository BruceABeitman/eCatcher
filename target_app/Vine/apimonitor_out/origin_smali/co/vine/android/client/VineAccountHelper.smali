.class public Lco/vine/android/client/VineAccountHelper;
.super Ljava/lang/Object;
.source "VineAccountHelper.java"


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = null

.field public static final KEY_ADD_WIDGET:Ljava/lang/String; = "account_add_widget"

.field public static final KEY_DID_SHOW_STORE_CONTACTS_PROMPT:Ljava/lang/String; = "account_did_show_store_contacts"

.field public static final KEY_DID_SHOW_VM_ONBOARD:Ljava/lang/String; = "account_did_show_vm_onboard"

.field public static final KEY_LOGIN_TYPE:Ljava/lang/String; = "account_login_type"

.field public static final KEY_NORMAL_VIDEO_PLAYABLE:Ljava/lang/String; = "account_normal_video_playable"

.field public static final KEY_SETTINGS:Ljava/lang/String; = "account_settings"

.field public static final KEY_TWITTER_SECRET:Ljava/lang/String; = "account_t_secret"

.field public static final KEY_TWITTER_TOKEN:Ljava/lang/String; = "account_t_token"

.field public static final KEY_TWITTER_USERNAME:Ljava/lang/String; = "account_t_username"

.field public static final KEY_TWITTER_USER_ID:Ljava/lang/String; = "account_t_id"

.field public static final KEY_USER_AVATAR:Ljava/lang/String; = "account_user_avatar"

.field public static final KEY_USER_DATA:Ljava/lang/String; = "account_user_data"

.field public static final KEY_USER_ID:Ljava/lang/String; = "account_user_info"

.field public static final KEY_USER_NAME:Ljava/lang/String; = "account_user_name"

.field public static final LOGIN_TYPE_EMAIL:I = 0x1

.field public static final LOGIN_TYPE_TWITTER:I = 0x2

.field public static final SESSION_TOKEN_KEY:Ljava/lang/String; = "co.vine.android.basic_auth.token.secret"

.field private static mActiveSession:Lco/vine/android/client/Session;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ".auth"

    invoke-static {v0}, Lco/vine/android/util/BuildUtil;->getAuthority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lco/vine/android/client/VineAccountHelper;->ACCOUNT_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAccount(Landroid/content/Context;Ljava/lang/String;Lco/vine/android/api/VineLogin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/accounts/Account;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/vine/android/VineLoggingException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-static {p0, p1}, Lco/vine/android/client/VineAccountHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_24

    new-instance v0, Landroid/accounts/Account;

    sget-object v4, Lco/vine/android/client/VineAccountHelper;->ACCOUNT_TYPE:Ljava/lang/String;

    invoke-direct {v0, p1, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1c

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_16
    invoke-virtual {v1, v0, v4, v5}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_19
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_19} :catch_1d

    move-result v4

    if-nez v4, :cond_24

    :cond_1c
    :goto_1c
    return-object v3

    :catch_1d
    move-exception v2

    new-instance v3, Lco/vine/android/VineLoggingException;

    invoke-direct {v3, v2}, Lco/vine/android/VineLoggingException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_24
    iget v3, p2, Lco/vine/android/api/VineLogin;->loginType:I

    packed-switch v3, :pswitch_data_80

    :goto_29
    const-string v3, "account_user_name"

    invoke-virtual {v1, v0, v3, p5}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "account_user_avatar"

    invoke-virtual {v1, v0, v3, p4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "account_user_info"

    iget-wide v4, p2, Lco/vine/android/api/VineLogin;->userId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v3, v4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "co.vine.android.basic_auth.token.secret"

    iget-object v4, p2, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    invoke-virtual {v1, v0, v3, v4}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    goto :goto_1c

    :pswitch_47
    invoke-virtual {v1, v0, p3}, Landroid/accounts/AccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    const-string v3, "account_login_type"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v3, v4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    :pswitch_55
    const-string v3, "account_t_token"

    iget-object v4, p2, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    invoke-virtual {v1, v0, v3, v4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "account_t_secret"

    iget-object v4, p2, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    invoke-virtual {v1, v0, v3, v4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "account_t_id"

    iget-wide v4, p2, Lco/vine/android/api/VineLogin;->twitterUserId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v3, v4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "account_t_username"

    iget-object v4, p2, Lco/vine/android/api/VineLogin;->twitterUsername:Ljava/lang/String;

    invoke-virtual {v1, v0, v3, v4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "account_login_type"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v3, v4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_47
        :pswitch_55
    .end packed-switch
.end method

.method private static createSession()Lco/vine/android/client/Session;
    .registers 7

    const/4 v1, 0x0

    new-instance v0, Lco/vine/android/client/Session;

    const-wide/16 v2, 0x0

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lco/vine/android/client/Session;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createSession(Landroid/content/Context;Landroid/accounts/Account;)Lco/vine/android/client/Session;
    .registers 10

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    invoke-static {v7, p1}, Lco/vine/android/client/VineAccountHelper;->getUserId(Landroid/accounts/AccountManager;Landroid/accounts/Account;)J

    move-result-wide v2

    invoke-static {p0}, Lco/vine/android/provider/SettingsManager;->getEdition(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lco/vine/android/client/Session;

    invoke-static {v7, p1}, Lco/vine/android/client/VineAccountHelper;->getSessionKey(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, p1}, Lco/vine/android/client/VineAccountHelper;->getName(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, p1}, Lco/vine/android/client/VineAccountHelper;->getAvatarUrl(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lco/vine/android/client/Session;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;
    .registers 9
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    if-eqz v2, :cond_21

    sget-object v6, Lco/vine/android/client/VineAccountHelper;->ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_21

    move-object v3, v1

    array-length v5, v3

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v5, :cond_21

    aget-object v0, v3, v4

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    :goto_1d
    return-object v0

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_21
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public static getAccountsCount(Landroid/content/Context;)I
    .registers 3

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    sget-object v1, Lco/vine/android/client/VineAccountHelper;->ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v1, v1

    return v1
.end method

.method public static getActiveAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .registers 2

    invoke-static {p0}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/client/Session;->getLoginEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lco/vine/android/client/VineAccountHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public static getActiveAccountReadOnly(Landroid/content/Context;)Landroid/accounts/Account;
    .registers 2

    invoke-static {p0}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/client/AppController;->getActiveSessionReadOnly()Lco/vine/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/client/Session;->getLoginEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lco/vine/android/client/VineAccountHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public static getActiveSession(Landroid/content/Context;Z)Lco/vine/android/client/Session;
    .registers 11

    sget-object v7, Lco/vine/android/client/VineAccountHelper;->mActiveSession:Lco/vine/android/client/Session;

    if-nez v7, :cond_4d

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    sget-object v8, Lco/vine/android/client/VineAccountHelper;->ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v8, v2

    if-lez v8, :cond_42

    invoke-static {p0}, Lco/vine/android/provider/SettingsManager;->getCurrentAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    array-length v6, v4

    const/4 v5, 0x0

    :goto_18
    if-ge v5, v6, :cond_42

    aget-object v0, v4, v5

    if-eqz v1, :cond_26

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3f

    :cond_26
    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {p0, v8}, Lco/vine/android/client/VineAccountHelper;->getSession(Landroid/content/Context;Ljava/lang/String;)Lco/vine/android/client/Session;

    move-result-object v7

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lco/vine/android/client/Session;->setLoginEmail(Ljava/lang/String;)V

    sget-object v8, Lco/vine/android/client/Session$LoginStatus;->LOGGED_IN:Lco/vine/android/client/Session$LoginStatus;

    invoke-virtual {v7, v8}, Lco/vine/android/client/Session;->setLoginStatus(Lco/vine/android/client/Session$LoginStatus;)V

    if-nez p1, :cond_3b

    invoke-static {p0, v7}, Lco/vine/android/client/VineAccountHelper;->setActiveSession(Landroid/content/Context;Lco/vine/android/client/Session;)V

    :cond_3b
    sput-object v7, Lco/vine/android/client/VineAccountHelper;->mActiveSession:Lco/vine/android/client/Session;

    move-object v8, v7

    :goto_3e
    return-object v8

    :cond_3f
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_42
    invoke-static {}, Lco/vine/android/client/VineAccountHelper;->createSession()Lco/vine/android/client/Session;

    move-result-object v7

    if-nez p1, :cond_4b

    invoke-static {p0, v7}, Lco/vine/android/client/VineAccountHelper;->setActiveSession(Landroid/content/Context;Lco/vine/android/client/Session;)V

    :cond_4b
    sput-object v7, Lco/vine/android/client/VineAccountHelper;->mActiveSession:Lco/vine/android/client/Session;

    :cond_4d
    sget-object v8, Lco/vine/android/client/VineAccountHelper;->mActiveSession:Lco/vine/android/client/Session;

    goto :goto_3e
.end method

.method public static getAvatarUrl(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;
    .registers 3

    const-string v0, "account_user_avatar"

    invoke-virtual {p0, p1, v0}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCachedActiveSession()Lco/vine/android/client/Session;
    .registers 1

    sget-object v0, Lco/vine/android/client/VineAccountHelper;->mActiveSession:Lco/vine/android/client/Session;

    return-object v0
.end method

.method public static getLoginType(Landroid/accounts/AccountManager;Landroid/accounts/Account;)I
    .registers 3

    const-string v0, "account_login_type"

    invoke-virtual {p0, p1, v0}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getName(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;
    .registers 3

    const-string v0, "account_user_name"

    invoke-virtual {p0, p1, v0}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPassword(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSession(Landroid/content/Context;Ljava/lang/String;)Lco/vine/android/client/Session;
    .registers 4

    if-nez p1, :cond_7

    invoke-static {}, Lco/vine/android/client/VineAccountHelper;->createSession()Lco/vine/android/client/Session;

    move-result-object v1

    :goto_6
    return-object v1

    :cond_7
    sget-object v1, Lco/vine/android/client/VineAccountHelper;->mActiveSession:Lco/vine/android/client/Session;

    if-nez v1, :cond_17

    invoke-static {p0, p1}, Lco/vine/android/client/VineAccountHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_1a

    invoke-static {}, Lco/vine/android/client/VineAccountHelper;->createSession()Lco/vine/android/client/Session;

    move-result-object v1

    sput-object v1, Lco/vine/android/client/VineAccountHelper;->mActiveSession:Lco/vine/android/client/Session;

    :cond_17
    :goto_17
    sget-object v1, Lco/vine/android/client/VineAccountHelper;->mActiveSession:Lco/vine/android/client/Session;

    goto :goto_6

    :cond_1a
    invoke-static {p0, v0}, Lco/vine/android/client/VineAccountHelper;->createSession(Landroid/content/Context;Landroid/accounts/Account;)Lco/vine/android/client/Session;

    move-result-object v1

    sput-object v1, Lco/vine/android/client/VineAccountHelper;->mActiveSession:Lco/vine/android/client/Session;

    goto :goto_17
.end method

.method public static getSessionKey(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;
    .registers 3

    const-string v0, "co.vine.android.basic_auth.token.secret"

    invoke-virtual {p0, p1, v0}, Landroid/accounts/AccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTwitterSecret(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;
    .registers 3

    const-string v0, "account_t_secret"

    invoke-virtual {p0, p1, v0}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTwitterToken(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;
    .registers 3

    const-string v0, "account_t_token"

    invoke-virtual {p0, p1, v0}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTwitterUsername(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;
    .registers 3

    const-string v0, "account_t_username"

    invoke-virtual {p0, p1, v0}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserId(Landroid/accounts/AccountManager;Landroid/accounts/Account;)J
    .registers 5

    const-string v1, "account_user_info"

    invoke-virtual {p0, p1, v1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    :goto_c
    return-wide v1

    :cond_d
    const-wide/16 v1, 0x0

    goto :goto_c
.end method

.method public static isLoggedIn(Landroid/content/Context;Z)Z
    .registers 3

    invoke-static {p0, p1}, Lco/vine/android/client/VineAccountHelper;->getActiveSession(Landroid/content/Context;Z)Lco/vine/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/client/Session;->isLoggedIn()Z

    move-result v0

    return v0
.end method

.method public static isNormalVideoPlayable(Landroid/content/Context;)Lco/vine/android/util/SystemUtil$PrefBooleanState;
    .registers 5

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    if-nez v1, :cond_9

    sget-object v3, Lco/vine/android/util/SystemUtil$PrefBooleanState;->UNKNOWN:Lco/vine/android/util/SystemUtil$PrefBooleanState;

    :goto_8
    return-object v3

    :cond_9
    invoke-static {p0}, Lco/vine/android/client/VineAccountHelper;->getActiveAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    const-string v3, "account_normal_video_playable"

    invoke-virtual {v1, v0, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_16
    if-eqz v2, :cond_1d

    invoke-static {v2}, Lco/vine/android/util/SystemUtil$PrefBooleanState;->valueOf(Ljava/lang/String;)Lco/vine/android/util/SystemUtil$PrefBooleanState;

    move-result-object v3

    goto :goto_8

    :cond_1d
    sget-object v3, Lco/vine/android/util/SystemUtil$PrefBooleanState;->UNKNOWN:Lco/vine/android/util/SystemUtil$PrefBooleanState;

    goto :goto_8
.end method

.method public static needsAddwidget(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Z
    .registers 4

    const-string v1, "account_add_widget"

    invoke-virtual {p0, p1, v1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x1

    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public static removeAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/AccountManagerFuture;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    sget-object v7, Lco/vine/android/client/VineAccountHelper;->ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    move-object v3, v1

    array-length v5, v3

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v5, :cond_1e

    aget-object v0, v3, v4

    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-virtual {v2, v0, v6, v6}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v6

    :cond_1e
    return-object v6

    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_e
.end method

.method public static removeTwitterInfo(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x0

    invoke-static {p0, p1}, Lco/vine/android/client/VineAccountHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "account_t_token"

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "account_t_secret"

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "account_t_id"

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "account_t_username"

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "account_login_type"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method public static resetActiveSession()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lco/vine/android/client/VineAccountHelper;->mActiveSession:Lco/vine/android/client/Session;

    return-void
.end method

.method public static saveTwitterInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 11

    invoke-static {p0, p1}, Lco/vine/android/client/VineAccountHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "account_t_token"

    invoke-virtual {v1, v0, v2, p3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "account_t_secret"

    invoke-virtual {v1, v0, v2, p4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "account_t_id"

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "account_t_username"

    invoke-virtual {v1, v0, v2, p2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "account_login_type"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    return-void
.end method

.method public static saveUserId(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 8

    invoke-static {p0, p1}, Lco/vine/android/client/VineAccountHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_19

    const-string v2, "account_user_info"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public static setActiveSession(Landroid/content/Context;Lco/vine/android/client/Session;)V
    .registers 6

    invoke-virtual {p1}, Lco/vine/android/client/Session;->getLoginEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lco/vine/android/client/Session;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lco/vine/android/client/Session;->getUserId()J

    move-result-wide v2

    invoke-static {p0, v0, v1, v2, v3}, Lco/vine/android/provider/SettingsManager;->setCurrentAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static setDidShowAddWidget(Landroid/accounts/AccountManager;Landroid/accounts/Account;)V
    .registers 4

    const-string v0, "account_add_widget"

    const-string v1, "YES"

    invoke-virtual {p0, p1, v0, v1}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setDidShowStoreContactsPrompt(Landroid/accounts/AccountManager;Landroid/accounts/Account;)V
    .registers 4

    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    const-string v0, "account_did_show_store_contacts"

    const-string v1, "YES"

    invoke-virtual {p0, p1, v0, v1}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public static setDidShowVmOnboard(Landroid/accounts/AccountManager;Landroid/accounts/Account;)V
    .registers 4

    const-string v0, "account_did_show_vm_onboard"

    const-string v1, "YES"

    invoke-virtual {p0, p1, v0, v1}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setSessionKey(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 4

    const-string v0, "co.vine.android.basic_auth.token.secret"

    invoke-virtual {p0, p1, v0, p2}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static shouldShowStoreContactsPrompt(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Z
    .registers 5

    const/4 v1, 0x1

    if-eqz p0, :cond_d

    if-eqz p1, :cond_d

    const-string v2, "account_did_show_store_contacts"

    invoke-virtual {p0, p1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    :cond_d
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public static shouldShowVmOnboard(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Z
    .registers 4

    const-string v1, "account_did_show_vm_onboard"

    invoke-virtual {p0, p1, v1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x1

    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public static syncNormalVideoPlayable(Landroid/content/Context;)V
    .registers 7

    invoke-static {p0}, Lco/vine/android/client/VineAccountHelper;->isNormalVideoPlayable(Landroid/content/Context;)Lco/vine/android/util/SystemUtil$PrefBooleanState;

    move-result-object v1

    invoke-static {p0}, Lco/vine/android/util/SystemUtil;->isNormalVideoPlayable(Landroid/content/Context;)Lco/vine/android/util/SystemUtil$PrefBooleanState;

    move-result-object v3

    if-eq v1, v3, :cond_23

    sget-object v4, Lco/vine/android/util/SystemUtil$PrefBooleanState;->UNKNOWN:Lco/vine/android/util/SystemUtil$PrefBooleanState;

    if-eq v3, v4, :cond_24

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-static {p0}, Lco/vine/android/client/VineAccountHelper;->getActiveAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-eqz v2, :cond_23

    if-eqz v0, :cond_23

    const-string v4, "account_normal_video_playable"

    invoke-virtual {v3}, Lco/vine/android/util/SystemUtil$PrefBooleanState;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v4, v5}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    :goto_23
    return-void

    :cond_24
    sget-object v4, Lco/vine/android/util/SystemUtil$PrefBooleanState;->TRUE:Lco/vine/android/util/SystemUtil$PrefBooleanState;

    if-ne v1, v4, :cond_2d

    const/4 v4, 0x1

    :goto_29
    invoke-static {p0, v4}, Lco/vine/android/util/SystemUtil;->setNormalVideoPlayable(Landroid/content/Context;Z)V

    goto :goto_23

    :cond_2d
    const/4 v4, 0x0

    goto :goto_29
.end method
