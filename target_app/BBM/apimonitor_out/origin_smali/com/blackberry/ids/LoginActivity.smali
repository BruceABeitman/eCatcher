.class public Lcom/blackberry/ids/LoginActivity;
.super Lcom/blackberry/ids/WebActivity;
.source "LoginActivity.java"


# static fields
.field public static final EXTRA_CHALLENGE_CODE:Ljava/lang/String; = "com.blackberry.ids.EXTRA_CHALLENGE_CODE"


# instance fields
.field a:Landroid/widget/RelativeLayout;

.field b:Landroid/widget/ImageView;

.field private final g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Landroid/content/BroadcastReceiver;

.field private k:Ljava/lang/String;

.field private l:Landroid/webkit/WebView;

.field private m:Landroid/widget/ProgressBar;

.field private n:Lcom/blackberry/ids/WebActivity$PingAsync;

.field private o:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "LoginActivity"

    invoke-direct {p0, v0}, Lcom/blackberry/ids/WebActivity;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/blackberry/ids/Entropy;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blackberry/ids/LoginActivity;->g:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/blackberry/ids/LoginActivity;->h:Z

    iput-boolean v2, p0, Lcom/blackberry/ids/LoginActivity;->i:Z

    iput-object v1, p0, Lcom/blackberry/ids/LoginActivity;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/blackberry/ids/LoginActivity;->a:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/blackberry/ids/LoginActivity;->b:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/blackberry/ids/LoginActivity;->l:Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/blackberry/ids/LoginActivity;->m:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/blackberry/ids/LoginActivity;->n:Lcom/blackberry/ids/WebActivity$PingAsync;

    iput-boolean v2, p0, Lcom/blackberry/ids/LoginActivity;->o:Z

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    :goto_9
    return-object p0

    :cond_a
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_9
.end method

.method static synthetic a(Lcom/blackberry/ids/LoginActivity;)V
    .registers 6

    const/4 v4, 0x1

    const-string v0, "LoginActivity request_id=%s cancelChallenge"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/blackberry/ids/LoginActivity;->f:Lcom/blackberry/ids/RequestId;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    const-string v0, "Canceled by ids_cancel_challenge"

    const v1, 0xc34f

    invoke-virtual {p0, v1, v0, v4}, Lcom/blackberry/ids/LoginActivity;->a(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/blackberry/ids/LoginActivity;Ljava/lang/String;)V
    .registers 4

    const v0, 0xc35c

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/blackberry/ids/LoginActivity;->a(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/blackberry/ids/LoginActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/blackberry/ids/LoginActivity;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/blackberry/ids/LoginActivity;)Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/blackberry/ids/LoginActivity;->l:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic b(Lcom/blackberry/ids/LoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/blackberry/ids/LoginActivity;->k:Ljava/lang/String;

    return-object p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v2, 0x1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    move v2, v7

    :goto_16
    return v2

    :cond_17
    const-string v0, "LoginActivity request_id=%s done"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/blackberry/ids/LoginActivity;->f:Lcom/blackberry/ids/RequestId;

    aput-object v3, v1, v7

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    const-string v0, "LoginActivity - debug request_id=%s done: %s"

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/blackberry/ids/LoginActivity;->f:Lcom/blackberry/ids/RequestId;

    aput-object v3, v1, v7

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v0, "code"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_cc

    const-string v3, ":"

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    aget-object v4, v0, v7

    aget-object v5, v0, v2

    const-string v0, "challengecode"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_58

    const-string v0, "LoginActivity - RequestId :%d, Response didn\'t have challenge code"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/blackberry/ids/LoginActivity;->f:Lcom/blackberry/ids/RequestId;

    aput-object v3, v1, v7

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_58
    iget-object v3, p0, Lcom/blackberry/ids/LoginActivity;->g:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/blackberry/ids/LoginActivity;->h:Z

    if-eqz v0, :cond_b8

    invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;

    move-result-object v1

    monitor-enter v1

    :try_start_63
    const-string v0, "LoginActivity - Storing the req token and do refresh here as it is started by an intent"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0, v8}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/blackberry/ids/BBIDStorage;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;

    move-result-object v0

    iget-object v3, p0, Lcom/blackberry/ids/LoginActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/blackberry/ids/BBIDStorage;->b(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_63 .. :try_end_7c} :catchall_b5

    const-string v0, "enter IDS.do_refresh_token request_id=%s"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/blackberry/ids/LoginActivity;->f:Lcom/blackberry/ids/RequestId;

    aput-object v3, v1, v7

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/blackberry/ids/IDS;->g()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/blackberry/ids/LoginActivity$4;

    invoke-direct {v1, p0}, Lcom/blackberry/ids/LoginActivity$4;-><init>(Lcom/blackberry/ids/LoginActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    sget-object v0, Lcom/blackberry/ids/UserAuthState$AuthState;->AUTHENTICATED:Lcom/blackberry/ids/UserAuthState$AuthState;

    invoke-static {v0}, Lcom/blackberry/ids/UserAuthState;->b(Lcom/blackberry/ids/UserAuthState$AuthState;)V

    const-string v0, "LoginActivity - succeed request_id=%s - Releasing challenge semaphore"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/blackberry/ids/LoginActivity;->f:Lcom/blackberry/ids/RequestId;

    aput-object v3, v1, v7

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/blackberry/ids/LoginActivity;->a()V

    sget-object v0, Lcom/blackberry/ids/IDS;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    invoke-virtual {p0, v9}, Lcom/blackberry/ids/LoginActivity;->setResult(I)V

    :goto_ae
    iput-boolean v2, p0, Lcom/blackberry/ids/LoginActivity;->i:Z

    invoke-virtual {p0}, Lcom/blackberry/ids/LoginActivity;->finish()V

    goto/16 :goto_16

    :catchall_b5
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_b8
    const-string v0, "LoginActivity succeeded request_id=%s"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/blackberry/ids/LoginActivity;->f:Lcom/blackberry/ids/RequestId;

    aput-object v8, v1, v7

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/blackberry/ids/LoginActivity;->f:Lcom/blackberry/ids/RequestId;

    iget-object v7, p0, Lcom/blackberry/ids/LoginActivity;->k:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/blackberry/ids/ChallengeListener;->challengeSucceeded(Landroid/content/Context;Lcom/blackberry/ids/RequestId;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ae

    :cond_cc
    const-string v0, "error"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d8

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_d8
    const-string v3, "error_description"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e4

    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_e4
    :try_start_e4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_e7
    .catch Ljava/lang/NumberFormatException; {:try_start_e4 .. :try_end_e7} :catch_11e

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_13c

    move-object v0, v1

    :goto_fa
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sparse-switch v3, :sswitch_data_17a

    const-string v1, "LoginActivity request_id=%s Request Failed with server error : %d"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/blackberry/ids/LoginActivity;->f:Lcom/blackberry/ids/RequestId;

    aput-object v5, v4, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v1, v4}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V

    const v1, 0xc354

    invoke-virtual {p0, v1, v0, v2}, Lcom/blackberry/ids/LoginActivity;->a(ILjava/lang/String;Z)V

    goto/16 :goto_16

    :catch_11e
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Result error \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' is not a valid integer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0xc35c

    invoke-virtual {p0, v1, v0, v2}, Lcom/blackberry/ids/LoginActivity;->a(ILjava/lang/String;Z)V

    goto/16 :goto_16

    :cond_13c
    const-string v0, "no error description"

    goto :goto_fa

    :sswitch_13f
    const v1, 0xc3e8

    invoke-virtual {p0, v1, v0, v2}, Lcom/blackberry/ids/LoginActivity;->a(ILjava/lang/String;Z)V

    goto/16 :goto_16

    :sswitch_147
    const-string v1, "LoginActivity request_id=%s Request Failed with server error : %d"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/blackberry/ids/LoginActivity;->f:Lcom/blackberry/ids/RequestId;

    aput-object v5, v4, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v1, v4}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V

    const v1, 0xc3ea

    invoke-virtual {p0, v1, v0, v2}, Lcom/blackberry/ids/LoginActivity;->a(ILjava/lang/String;Z)V

    goto/16 :goto_16

    :sswitch_160
    const-string v1, "LoginActivity request_id=%s Request Failed with server error : %d"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/blackberry/ids/LoginActivity;->f:Lcom/blackberry/ids/RequestId;

    aput-object v5, v4, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v1, v4}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V

    const v1, 0xc3ec

    invoke-virtual {p0, v1, v0, v2}, Lcom/blackberry/ids/LoginActivity;->a(ILjava/lang/String;Z)V

    goto/16 :goto_16

    nop

    :sswitch_data_17a
    .sparse-switch
        0x1117c -> :sswitch_147
        0x11187 -> :sswitch_13f
        0x11189 -> :sswitch_160
        0x1118e -> :sswitch_160
        0x11196 -> :sswitch_147
        0x11197 -> :sswitch_160
    .end sparse-switch
.end method

.method static synthetic c(Lcom/blackberry/ids/LoginActivity;)Landroid/widget/ProgressBar;
    .registers 2

    iget-object v0, p0, Lcom/blackberry/ids/LoginActivity;->m:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public static callbackCompleted(Landroid/content/Context;)V
    .registers 3

    const-string v0, "LoginActivity sending CALLBACK_COMPLETED"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.blackberry.ids.CALLBACK_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static cancelChallenge(Landroid/content/Context;)V
    .registers 3

    const-string v0, "LoginActivity sending CANCEL_CHALLENGE"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.blackberry.ids.CANCEL_CHALLENGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic d(Lcom/blackberry/ids/LoginActivity;)V
    .registers 3

    iget-object v0, p0, Lcom/blackberry/ids/LoginActivity;->l:Landroid/webkit/WebView;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/blackberry/ids/LoginActivity;->l:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "showWebview"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    new-instance v0, Lcom/blackberry/ids/LoginActivity$5;

    invoke-direct {v0, p0}, Lcom/blackberry/ids/LoginActivity$5;-><init>(Lcom/blackberry/ids/LoginActivity;)V

    invoke-virtual {p0, v0}, Lcom/blackberry/ids/LoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1c
    return-void
.end method

.method static synthetic e(Lcom/blackberry/ids/LoginActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/blackberry/ids/LoginActivity;->o:Z

    return v0
.end method

.method public static startChallenge(Landroid/content/Context;ILcom/blackberry/ids/RequestId;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/blackberry/ids/LoginActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.blackberry.ids.REQUEST_ID"

    invoke-virtual {p2}, Lcom/blackberry/ids/RequestId;->getRequestId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.blackberry.ids.BASE_URI"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.blackberry.ids.CLIENT_ID"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.blackberry.ids.APP_GUID"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.blackberry.ids.NEXT_REQTOKEN"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.blackberry.ids.REDIRECT_URI"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.blackberry.ids.USER_AGENT"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.blackberry.ids.EXTRA_CHALLENGE_CODE"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "IDS_ACTIVITY_INTENT_CALLER"

    const-string v2, "IDS_INTERNAL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/String;Z)V
    .registers 10

    const/4 v1, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/blackberry/ids/LoginActivity;->h:Z

    if-eqz v0, :cond_81

    const-string v0, "LoginActivity with Intent failed request_id=%s result=%d info=%s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/blackberry/ids/LoginActivity;->f:Lcom/blackberry/ids/RequestId;

    aput-object v2, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    if-eqz p3, :cond_30

    const-string v0, "LoginActivity - fail request_id=%s - Releasing challenge semaphore"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/blackberry/ids/LoginActivity;->f:Lcom/blackberry/ids/RequestId;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/blackberry/ids/LoginActivity;->a()V

    sget-object v0, Lcom/blackberry/ids/IDS;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_30
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "IDS_ACTIVTY_RESULT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "IDS_ACTIVTY_INFO"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0xc34f

    if-eq p1, v1, :cond_49

    const v1, 0xc3e8

    if-ne p1, v1, :cond_7c

    :cond_49
    const-string v1, "LoginActivity with Intent failed request_id=%s result=%d -- USING BACK PRESS CB INTENT"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/blackberry/ids/LoginActivity;->f:Lcom/blackberry/ids/RequestId;

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {p0, v4, v0}, Lcom/blackberry/ids/LoginActivity;->setResult(ILandroid/content/Intent;)V

    :goto_5d
    const v0, 0xc3ea

    if-eq p1, v0, :cond_67

    const v0, 0xc354

    if-ne p1, v0, :cond_6c

    :cond_67
    sget-object v0, Lcom/blackberry/ids/UserAuthState$AuthState;->NOT_AUTHENTICATED:Lcom/blackberry/ids/UserAuthState$AuthState;

    invoke-static {v0}, Lcom/blackberry/ids/UserAuthState;->b(Lcom/blackberry/ids/UserAuthState$AuthState;)V

    :cond_6c
    const v0, 0xc3ec

    if-ne p1, v0, :cond_76

    sget-object v0, Lcom/blackberry/ids/UserAuthState$AuthState;->NO_LONGER_VALID:Lcom/blackberry/ids/UserAuthState$AuthState;

    invoke-static {v0}, Lcom/blackberry/ids/UserAuthState;->b(Lcom/blackberry/ids/UserAuthState$AuthState;)V

    :cond_76
    :goto_76
    iput-boolean v5, p0, Lcom/blackberry/ids/LoginActivity;->i:Z

    invoke-virtual {p0}, Lcom/blackberry/ids/LoginActivity;->finish()V

    return-void

    :cond_7c
    const/4 v1, -0x2

    invoke-virtual {p0, v1, v0}, Lcom/blackberry/ids/LoginActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_5d

    :cond_81
    const-string v0, "LoginActivity failed request_id=%s result=%d info=%s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/blackberry/ids/LoginActivity;->f:Lcom/blackberry/ids/RequestId;

    aput-object v2, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/blackberry/ids/LoginActivity;->f:Lcom/blackberry/ids/RequestId;

    invoke-static {p0, v0, p1, p2}, Lcom/blackberry/ids/ChallengeListener;->challengeFailed(Landroid/content/Context;Lcom/blackberry/ids/RequestId;ILjava/lang/String;)V

    goto :goto_76
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/blackberry/ids/LoginActivity;->l:Landroid/webkit/WebView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/blackberry/ids/LoginActivity;->l:Landroid/webkit/WebView;

    invoke-static {p2}, Lcom/blackberry/ids/StringUtils;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    :cond_d
    return-void
.end method

.method public onBackPressed()V
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "LoginActivity request_id=%s onBackPressed -- Exiting webview"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/blackberry/ids/LoginActivity;->f:Lcom/blackberry/ids/RequestId;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/blackberry/ids/LoginActivity;->l:Landroid/webkit/WebView;

    iget-boolean v0, p0, Lcom/blackberry/ids/WebActivity;->d:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/blackberry/ids/LoginActivity;->n:Lcom/blackberry/ids/WebActivity$PingAsync;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/blackberry/ids/LoginActivity;->n:Lcom/blackberry/ids/WebActivity$PingAsync;

    invoke-virtual {v0, v3}, Lcom/blackberry/ids/WebActivity$PingAsync;->cancel(Z)Z

    :cond_1d
    iput-object v5, p0, Lcom/blackberry/ids/LoginActivity;->n:Lcom/blackberry/ids/WebActivity$PingAsync;

    iput-boolean v4, p0, Lcom/blackberry/ids/WebActivity;->d:Z

    :cond_21
    const-string v0, "User pressed back."

    const v1, 0xc3e8

    invoke-virtual {p0, v1, v0, v3}, Lcom/blackberry/ids/LoginActivity;->a(ILjava/lang/String;Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15

    invoke-super {p0, p1}, Lcom/blackberry/ids/WebActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/blackberry/ids/LoginActivity$1;

    invoke-direct {v0, p0}, Lcom/blackberry/ids/LoginActivity$1;-><init>(Lcom/blackberry/ids/LoginActivity;)V

    iput-object v0, p0, Lcom/blackberry/ids/LoginActivity;->j:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "IDS_ACTIVTY_RESULT"

    const v2, 0xc34f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "IDS_ACTIVTY_INFO"

    const-string v2, "LoginActivity failed on unknown reason"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x2

    invoke-virtual {p0, v1, v0}, Lcom/blackberry/ids/LoginActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/blackberry/ids/LoginActivity;->j:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.blackberry.ids.CANCEL_CHALLENGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/blackberry/ids/LoginActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/blackberry/ids/LoginActivity;->j:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.blackberry.ids.CALLBACK_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/blackberry/ids/LoginActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/blackberry/ids/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v0, "IDS_ACTIVITY_INTENT_CALLER"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_52

    const-string v1, "IDS_ACTIVITY_CALLER_BBM_UI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_52

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/blackberry/ids/LoginActivity;->h:Z

    :cond_52
    invoke-static {}, Lcom/blackberry/ids/IDS;->a()Z

    move-result v1

    if-nez v1, :cond_67

    const-string v1, "ERROR - LoginActivity called before IDS was initialized!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->e(Ljava/lang/Object;[Ljava/lang/Object;)V

    const/4 v1, -0x1

    const-string v2, "Not initialized"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/blackberry/ids/LoginActivity;->a(ILjava/lang/String;Z)V

    :cond_67
    iget-boolean v1, p0, Lcom/blackberry/ids/LoginActivity;->h:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1cb

    new-instance v0, Lcom/blackberry/ids/RequestId;

    invoke-direct {v0}, Lcom/blackberry/ids/RequestId;-><init>()V

    iput-object v0, p0, Lcom/blackberry/ids/LoginActivity;->f:Lcom/blackberry/ids/RequestId;

    sget-object v0, Lcom/blackberry/ids/IDS;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-nez v0, :cond_92

    const-string v0, "LoginActivity request_id=%s onCreate With next Intent : Cannot continue Challenge is already pending"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/blackberry/ids/LoginActivity;->f:Lcom/blackberry/ids/RequestId;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V

    const v0, 0xc3f0

    const-string v1, "A challenge activity is already pending."

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/blackberry/ids/LoginActivity;->a(ILjava/lang/String;Z)V

    :goto_91
    return-void

    :cond_92
    const-string v0, "LoginActivity - onCreate request_id=%s - Acquired challenge semaphore"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/blackberry/ids/LoginActivity;->f:Lcom/blackberry/ids/RequestId;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/blackberry/ids/LoginActivity;->b()I

    move-result v0

    if-eqz v0, :cond_ac

    const-string v1, "Error while acquiring challenge queue lock"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/blackberry/ids/LoginActivity;->a(ILjava/lang/String;Z)V

    goto :goto_91

    :cond_ac
    invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;

    move-result-object v1

    monitor-enter v1

    :try_start_b1
    invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;

    move-result-object v0

    iget-object v5, v0, Lcom/blackberry/ids/BBIDStorage;->b:Ljava/lang/String;

    invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blackberry/ids/BBIDStorage;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blackberry/ids/BBIDStorage;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blackberry/ids/BBIDStorage;->e()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_d0
    .catchall {:try_start_b1 .. :try_end_d0} :catchall_1c8

    invoke-static {}, Lcom/blackberry/ids/IDS;->e()Landroid/net/Uri;

    move-result-object v6

    invoke-static {}, Lcom/blackberry/ids/IDS;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/blackberry/ids/IDS;->f()Ljava/lang/String;

    move-result-object v1

    const-string v8, "LoginActivity request_id=%s onCreate With next Intent"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/blackberry/ids/LoginActivity;->f:Lcom/blackberry/ids/RequestId;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_e9
    iget-object v8, p0, Lcom/blackberry/ids/LoginActivity;->f:Lcom/blackberry/ids/RequestId;

    sput-object v8, Lcom/blackberry/ids/WebActivity;->c:Lcom/blackberry/ids/RequestId;

    new-instance v8, Landroid/webkit/WebView;

    invoke-direct {v8, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v9, Lcom/blackberry/ids/WebActivity$CookieTracker;

    invoke-direct {v9}, Lcom/blackberry/ids/WebActivity$CookieTracker;-><init>()V

    iput-object v9, p0, Lcom/blackberry/ids/LoginActivity;->e:Lcom/blackberry/ids/WebActivity$CookieTracker;

    iget-object v9, p0, Lcom/blackberry/ids/LoginActivity;->e:Lcom/blackberry/ids/WebActivity$CookieTracker;

    invoke-virtual {v9}, Lcom/blackberry/ids/WebActivity$CookieTracker;->setAcceptCookies()V

    iget-object v9, p0, Lcom/blackberry/ids/LoginActivity;->e:Lcom/blackberry/ids/WebActivity$CookieTracker;

    iget-object v10, p0, Lcom/blackberry/ids/LoginActivity;->f:Lcom/blackberry/ids/RequestId;

    invoke-virtual {v9, v10}, Lcom/blackberry/ids/WebActivity$CookieTracker;->clearCookies(Lcom/blackberry/ids/RequestId;)V

    invoke-virtual {v8}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v9, Lcom/blackberry/ids/LoginActivity$JSInterface;

    invoke-direct {v9, p0}, Lcom/blackberry/ids/LoginActivity$JSInterface;-><init>(Lcom/blackberry/ids/LoginActivity;)V

    const-string v10, "HTMLOUT"

    invoke-virtual {v8, v9, v10}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Lcom/blackberry/ids/LoginActivity$2;

    invoke-direct {v9, p0, v8, v2}, Lcom/blackberry/ids/LoginActivity$2;-><init>(Lcom/blackberry/ids/LoginActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v9, "authorize"

    invoke-virtual {v6, v9}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v9, 0x3a

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v9, p0, Lcom/blackberry/ids/LoginActivity;->g:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_236

    const-string v0, "LoginActivity - RequestId : %d, using refresh token for user identification"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/blackberry/ids/LoginActivity;->f:Lcom/blackberry/ids/RequestId;

    invoke-virtual {v11}, Lcom/blackberry/ids/RequestId;->getRequestId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v0, v9}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_178
    new-instance v3, Lcom/blackberry/ids/PostBody;

    invoke-direct {v3}, Lcom/blackberry/ids/PostBody;-><init>()V

    const-string v4, "client_id"

    invoke-virtual {v3, v4, v5}, Lcom/blackberry/ids/PostBody;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/blackberry/ids/PostBody;

    move-result-object v3

    const-string v4, "response_type"

    const-string v5, "code"

    invoke-virtual {v3, v4, v5}, Lcom/blackberry/ids/PostBody;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/blackberry/ids/PostBody;

    move-result-object v3

    const-string v4, "redirect_uri"

    invoke-virtual {v3, v4, v2}, Lcom/blackberry/ids/PostBody;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/blackberry/ids/PostBody;

    move-result-object v2

    const-string v3, "client_secret"

    invoke-virtual {v2, v3, v0}, Lcom/blackberry/ids/PostBody;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/blackberry/ids/PostBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blackberry/ids/PostBody;->getString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "body = %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    const-string v2, "postUrl %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {v8}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/blackberry/ids/LoginActivity;->h:Z

    if-nez v1, :cond_281

    invoke-virtual {p0, v8}, Lcom/blackberry/ids/LoginActivity;->setContentView(Landroid/view/View;)V

    invoke-static {v0}, Lcom/blackberry/ids/StringUtils;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v8, v6, v0}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    goto/16 :goto_91

    :catchall_1c8
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1cb
    if-eqz v0, :cond_1d5

    const-string v1, "IDS_INTERNAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e5

    :cond_1d5
    const-string v0, "LoginActivity - ERROR - next intent not present and this activity is not ivoked internally - ignore silently"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->e(Ljava/lang/Object;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/blackberry/ids/LoginActivity;->i:Z

    invoke-virtual {p0}, Lcom/blackberry/ids/LoginActivity;->finish()V

    goto/16 :goto_91

    :cond_1e5
    new-instance v0, Lcom/blackberry/ids/RequestId;

    const-string v1, "com.blackberry.ids.REQUEST_ID"

    const/4 v2, -0x1

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/blackberry/ids/RequestId;-><init>(I)V

    iput-object v0, p0, Lcom/blackberry/ids/LoginActivity;->f:Lcom/blackberry/ids/RequestId;

    const-string v0, "com.blackberry.ids.BASE_URI"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const-string v1, "com.blackberry.ids.CLIENT_ID"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "com.blackberry.ids.APP_GUID"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "com.blackberry.ids.NEXT_REQTOKEN"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "com.blackberry.ids.REDIRECT_URI"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "com.blackberry.ids.USER_AGENT"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "com.blackberry.ids.EXTRA_CHALLENGE_CODE"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "LoginActivity request_id=%s onCreate"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/blackberry/ids/LoginActivity;->f:Lcom/blackberry/ids/RequestId;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    move-object v12, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v0

    move-object v0, v12

    goto/16 :goto_e9

    :cond_236
    if-eqz v0, :cond_266

    const-string v3, "LoginActivity - RequestId : %d, using challenge code for user identification"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/blackberry/ids/LoginActivity;->f:Lcom/blackberry/ids/RequestId;

    invoke-virtual {v11}, Lcom/blackberry/ids/RequestId;->getRequestId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v3, v9}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_178

    :cond_266
    const-string v0, "LoginActivity - RequestId : %d, No user identification found, fresh login ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/blackberry/ids/LoginActivity;->f:Lcom/blackberry/ids/RequestId;

    invoke-virtual {v10}, Lcom/blackberry/ids/RequestId;->getRequestId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v9

    invoke-static {v0, v3}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/blackberry/ids/LoginActivity;->o:Z

    move-object v0, v4

    goto/16 :goto_178

    :cond_281
    iput-object v8, p0, Lcom/blackberry/ids/LoginActivity;->l:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/blackberry/ids/LoginActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/blackberry/ids/LoginActivity;->a:Landroid/widget/RelativeLayout;

    const/16 v2, 0x63

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object v1, p0, Lcom/blackberry/ids/LoginActivity;->a:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "IDS_ACTIVITY_BBM_BG"

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2b0

    iget-object v2, p0, Lcom/blackberry/ids/LoginActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/blackberry/ids/LoginActivity;->l:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    :cond_2b0
    const-string v1, "IDS_ACTIVITY_BBM_IMG"

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/blackberry/ids/LoginActivity;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/blackberry/ids/LoginActivity;->b:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setId(I)V

    if-eqz v1, :cond_2e7

    invoke-virtual {p0}, Lcom/blackberry/ids/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/blackberry/ids/LoginActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/blackberry/ids/LoginActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/blackberry/ids/LoginActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2e7
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x8

    invoke-virtual {v8, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v3, p0, Lcom/blackberry/ids/LoginActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v8, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ProgressBar;

    invoke-direct {v2, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/blackberry/ids/LoginActivity;->m:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/blackberry/ids/LoginActivity;->m:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const-string v2, "IDS_ACTIVITY_BBM_SPINNER"

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_31c

    iget-object v3, p0, Lcom/blackberry/ids/LoginActivity;->m:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/blackberry/ids/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_31c
    const-string v2, "IDS_ACTIVITY_BBM_SPINNER_DELAY"

    const/4 v3, -0x1

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v1, :cond_374

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xe

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0}, Lcom/blackberry/ids/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    const/high16 v5, 0x4120

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/blackberry/ids/LoginActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/blackberry/ids/LoginActivity;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v4, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_350
    iget-object v1, p0, Lcom/blackberry/ids/LoginActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/blackberry/ids/LoginActivity;->setContentView(Landroid/view/View;)V

    new-instance v1, Lcom/blackberry/ids/WebActivity$PingAsync;

    invoke-direct {v1, p0}, Lcom/blackberry/ids/WebActivity$PingAsync;-><init>(Lcom/blackberry/ids/WebActivity;)V

    iput-object v1, p0, Lcom/blackberry/ids/LoginActivity;->n:Lcom/blackberry/ids/WebActivity$PingAsync;

    iget-object v1, p0, Lcom/blackberry/ids/LoginActivity;->n:Lcom/blackberry/ids/WebActivity$PingAsync;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v3}, Lcom/blackberry/ids/WebActivity$PingAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    if-gtz v2, :cond_389

    iget-object v0, p0, Lcom/blackberry/ids/LoginActivity;->m:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_91

    :cond_374
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/blackberry/ids/LoginActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/blackberry/ids/LoginActivity;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v4, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_350

    :cond_389
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/blackberry/ids/LoginActivity$3;

    invoke-direct {v1, p0}, Lcom/blackberry/ids/LoginActivity$3;-><init>(Lcom/blackberry/ids/LoginActivity;)V

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_91
.end method

.method protected onDestroy()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/blackberry/ids/WebActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/blackberry/ids/LoginActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "LoginActivity request_id=%s onDestroy - Final"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/blackberry/ids/LoginActivity;->f:Lcom/blackberry/ids/RequestId;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/blackberry/ids/LoginActivity;->i:Z

    if-nez v0, :cond_22

    const-string v0, "LoginActivity failed mysteriously"

    const v1, 0xc34f

    invoke-virtual {p0, v1, v0, v3}, Lcom/blackberry/ids/LoginActivity;->a(ILjava/lang/String;Z)V

    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/blackberry/ids/LoginActivity;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/blackberry/ids/LoginActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :cond_28
    const-string v0, "LoginActivity request_id=%s onDestroy - Might be a restart"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/blackberry/ids/LoginActivity;->f:Lcom/blackberry/ids/RequestId;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/blackberry/ids/LoginActivity;->h:Z

    if-eqz v0, :cond_22

    const-string v0, "LoginActivity request_id=%s onDestroy - Releasing challenge semaphore during restart"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/blackberry/ids/LoginActivity;->f:Lcom/blackberry/ids/RequestId;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    sget-object v0, Lcom/blackberry/ids/IDS;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_22
.end method

.method public bridge synthetic onPause()V
    .registers 1

    invoke-super {p0}, Lcom/blackberry/ids/WebActivity;->onPause()V

    return-void
.end method
