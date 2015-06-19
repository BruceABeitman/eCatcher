.class public Lcom/blackberry/ids/EditActivity;
.super Lcom/blackberry/ids/WebActivity;
.source "EditActivity.java"
.field  a:Landroid/widget/RelativeLayout;
.field  b:Landroid/widget/ImageView;
.field private g:Z
.field private h:Landroid/webkit/WebView;
.field private i:Landroid/widget/ProgressBar;
.field private j:Lcom/blackberry/ids/WebActivity$PingAsync;
.field private k:Z
.method public constructor <init>()V
.registers 4
const/4 v2, 0x0
const/4 v1, 0x0
const-string v0, "EditActivity"
invoke-direct {p0, v0}, Lcom/blackberry/ids/WebActivity;-><init>(Ljava/lang/String;)V
iput-boolean v2, p0, Lcom/blackberry/ids/EditActivity;->g:Z
iput-object v1, p0, Lcom/blackberry/ids/EditActivity;->a:Landroid/widget/RelativeLayout;
iput-object v1, p0, Lcom/blackberry/ids/EditActivity;->b:Landroid/widget/ImageView;
iput-object v1, p0, Lcom/blackberry/ids/EditActivity;->h:Landroid/webkit/WebView;
iput-object v1, p0, Lcom/blackberry/ids/EditActivity;->i:Landroid/widget/ProgressBar;
iput-object v1, p0, Lcom/blackberry/ids/EditActivity;->j:Lcom/blackberry/ids/WebActivity$PingAsync;
iput-boolean v2, p0, Lcom/blackberry/ids/EditActivity;->k:Z
return-void
.end method
.method static synthetic a(Lcom/blackberry/ids/EditActivity;)Landroid/webkit/WebView;
.registers 2
iget-object v0, p0, Lcom/blackberry/ids/EditActivity;->h:Landroid/webkit/WebView;
return-object v0
.end method
.method private a(I)V
.registers 7
const/4 v4, 0x0
const/4 v3, 0x1
const-string v0, "EditActivity succeeded request_id=%s"
new-array v1, v3, [Ljava/lang/Object;
iget-object v2, p0, Lcom/blackberry/ids/EditActivity;->f:Lcom/blackberry/ids/RequestId;
aput-object v2, v1, v4
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-boolean v0, p0, Lcom/blackberry/ids/EditActivity;->g:Z
if-ne v0, v3, :cond_49
const-string v0, "EditActivity - succeed request_id=%s - Releasing challenge semaphore"
new-array v1, v3, [Ljava/lang/Object;
iget-object v2, p0, Lcom/blackberry/ids/EditActivity;->f:Lcom/blackberry/ids/RequestId;
aput-object v2, v1, v4
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {p0}, Lcom/blackberry/ids/EditActivity;->a()V
sget-object v0, Lcom/blackberry/ids/IDS;->a:Ljava/util/concurrent/Semaphore;
invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
const/4 v0, -0x2
if-ne p1, v0, :cond_44
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-string v1, "IDS_ACTIVTY_RESULT"
const v2, 0xc3e8
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string v1, "IDS_ACTIVTY_INFO"
const-string v2, "User pressed back."
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v4, v0}, Lcom/blackberry/ids/EditActivity;->setResult(ILandroid/content/Intent;)V
:goto_3e
iput-boolean v3, p0, Lcom/blackberry/ids/EditActivity;->k:Z
invoke-virtual {p0}, Lcom/blackberry/ids/EditActivity;->finish()V
return-void
:cond_44
const/4 v0, 0x2
invoke-virtual {p0, v0}, Lcom/blackberry/ids/EditActivity;->setResult(I)V
goto :goto_3e
:cond_49
iget-object v0, p0, Lcom/blackberry/ids/EditActivity;->f:Lcom/blackberry/ids/RequestId;
invoke-static {p0, v0, v3}, Lcom/blackberry/ids/ManageIdentityListener;->manageIdentitySucceeded(Landroid/content/Context;Lcom/blackberry/ids/RequestId;I)V
goto :goto_3e
.end method
.method static synthetic a(Lcom/blackberry/ids/EditActivity;Ljava/lang/String;)V
.registers 4
const v0, 0xc35c
const/4 v1, 0x1
invoke-virtual {p0, v0, p1, v1}, Lcom/blackberry/ids/EditActivity;->a(ILjava/lang/String;Z)V
return-void
.end method
.method static synthetic a(Lcom/blackberry/ids/EditActivity;Ljava/lang/String;Ljava/lang/String;)Z
.registers 4
invoke-direct {p0, p1, p2}, Lcom/blackberry/ids/EditActivity;->b(Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method static synthetic b(Lcom/blackberry/ids/EditActivity;)Landroid/widget/ProgressBar;
.registers 2
iget-object v0, p0, Lcom/blackberry/ids/EditActivity;->i:Landroid/widget/ProgressBar;
return-object v0
.end method
.method private b(Ljava/lang/String;Ljava/lang/String;)Z
.registers 11
const v7, 0xc34f
const/4 v6, 0x2
const/4 v2, 0x0
const/4 v3, 0x1
sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1a
move v0, v2
:goto_19
return v0
:cond_1a
const-string v0, "EditActivity request_id=%s done"
new-array v1, v3, [Ljava/lang/Object;
iget-object v4, p0, Lcom/blackberry/ids/EditActivity;->f:Lcom/blackberry/ids/RequestId;
aput-object v4, v1, v2
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v0, "EditActivity request_id=%s done: %s"
new-array v1, v6, [Ljava/lang/Object;
iget-object v4, p0, Lcom/blackberry/ids/EditActivity;->f:Lcom/blackberry/ids/RequestId;
aput-object v4, v1, v2
aput-object p2, v1, v3
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
const-string v0, "state"
invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_69
const-string v1, "manageAccount"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_56
const-string v0, "EditActivity request_id=%s STATE INFO MATCHED - calling success"
new-array v1, v3, [Ljava/lang/Object;
iget-object v4, p0, Lcom/blackberry/ids/EditActivity;->f:Lcom/blackberry/ids/RequestId;
aput-object v4, v1, v2
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-direct {p0, v2}, Lcom/blackberry/ids/EditActivity;->a(I)V
:goto_54
move v0, v3
goto :goto_19
:cond_56
const-string v0, "EditActivity request_id=%s NO STATE INFO found: %s"
new-array v1, v6, [Ljava/lang/Object;
iget-object v4, p0, Lcom/blackberry/ids/EditActivity;->f:Lcom/blackberry/ids/RequestId;
aput-object v4, v1, v2
aput-object p2, v1, v3
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->e(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v0, "State parameter does not match the original manage account request"
invoke-virtual {p0, v7, v0, v3}, Lcom/blackberry/ids/EditActivity;->a(ILjava/lang/String;Z)V
goto :goto_54
:cond_69
const-string v0, "error"
invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_75
invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:cond_75
const-string v4, "error_description"
invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_81
invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
:try_start_81
:cond_81
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_84
.catch Ljava/lang/NumberFormatException; {:try_start_81 .. :try_end_84} :catch_b9
move-result v4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v5, ": "
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
if-eqz v1, :cond_d8
move-object v0, v1
:goto_97
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sparse-switch v4, :sswitch_data_130
const-string v1, "EditActivity request_id=%s Request Failed with server error : %d"
new-array v5, v6, [Ljava/lang/Object;
iget-object v6, p0, Lcom/blackberry/ids/EditActivity;->f:Lcom/blackberry/ids/RequestId;
aput-object v6, v5, v2
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v5, v3
invoke-static {v1, v5}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {p0, v7, v0, v3}, Lcom/blackberry/ids/EditActivity;->a(ILjava/lang/String;Z)V
:goto_b6
move v0, v3
goto/16 :goto_19
:catch_b9
move-exception v1
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Result error \'"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\' is not a valid integer"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const v1, 0xc35c
invoke-virtual {p0, v1, v0, v3}, Lcom/blackberry/ids/EditActivity;->a(ILjava/lang/String;Z)V
move v0, v3
goto/16 :goto_19
:cond_d8
const-string v0, "no error description"
goto :goto_97
:sswitch_db
const-string v0, "EditActivity request_id=%s MANAGEACCOUNT_CANCELLED - calling success"
new-array v1, v3, [Ljava/lang/Object;
iget-object v4, p0, Lcom/blackberry/ids/EditActivity;->f:Lcom/blackberry/ids/RequestId;
aput-object v4, v1, v2
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
const/4 v0, -0x2
invoke-direct {p0, v0}, Lcom/blackberry/ids/EditActivity;->a(I)V
goto :goto_b6
:sswitch_eb
const-string v1, "EditActivity request_id=%s Request Failed with server error : %d"
new-array v5, v6, [Ljava/lang/Object;
iget-object v6, p0, Lcom/blackberry/ids/EditActivity;->f:Lcom/blackberry/ids/RequestId;
aput-object v6, v5, v2
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v5, v3
invoke-static {v1, v5}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {p0, v7, v0, v3}, Lcom/blackberry/ids/EditActivity;->a(ILjava/lang/String;Z)V
goto :goto_b6
:sswitch_100
const-string v1, "EditActivity request_id=%s Request Failed with server error : %d"
new-array v5, v6, [Ljava/lang/Object;
iget-object v6, p0, Lcom/blackberry/ids/EditActivity;->f:Lcom/blackberry/ids/RequestId;
aput-object v6, v5, v2
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v5, v3
invoke-static {v1, v5}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
const v1, 0xc3ec
invoke-virtual {p0, v1, v0, v3}, Lcom/blackberry/ids/EditActivity;->a(ILjava/lang/String;Z)V
goto :goto_b6
:sswitch_118
const-string v1, "EditActivity request_id=%s Request Failed with server error : %d"
new-array v5, v6, [Ljava/lang/Object;
iget-object v6, p0, Lcom/blackberry/ids/EditActivity;->f:Lcom/blackberry/ids/RequestId;
aput-object v6, v5, v2
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v5, v3
invoke-static {v1, v5}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
const v1, 0xc3ea
invoke-virtual {p0, v1, v0, v3}, Lcom/blackberry/ids/EditActivity;->a(ILjava/lang/String;Z)V
goto :goto_b6
:sswitch_data_130
.sparse-switch
0x1117c -> :sswitch_118
0x11189 -> :sswitch_100
0x1118e -> :sswitch_118
0x11196 -> :sswitch_118
0x11197 -> :sswitch_100
0x111a2 -> :sswitch_eb
0x111a3 -> :sswitch_db
.end sparse-switch
.end method
.method static synthetic c(Lcom/blackberry/ids/EditActivity;)V
.registers 3
iget-object v0, p0, Lcom/blackberry/ids/EditActivity;->h:Landroid/webkit/WebView;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/blackberry/ids/EditActivity;->h:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I
move-result v0
const/16 v1, 0x8
if-ne v0, v1, :cond_16
new-instance v0, Lcom/blackberry/ids/EditActivity$3;
invoke-direct {v0, p0}, Lcom/blackberry/ids/EditActivity$3;-><init>(Lcom/blackberry/ids/EditActivity;)V
invoke-virtual {p0, v0}, Lcom/blackberry/ids/EditActivity;->runOnUiThread(Ljava/lang/Runnable;)V
:cond_16
return-void
.end method
.method public static startEditView(Landroid/content/Context;Lcom/blackberry/ids/RequestId;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 13
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-class v1, Lcom/blackberry/ids/EditActivity;
invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
move-result-object v0
const/high16 v1, 0x1000
invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
move-result-object v0
const/high16 v1, 0x1
invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
move-result-object v0
const-string v1, "com.blackberry.ids.REQUEST_ID"
invoke-virtual {p1}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
move-result-object v0
const-string v1, "com.blackberry.ids.BASE_URI"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
move-result-object v0
const-string v1, "com.blackberry.ids.CLIENT_ID"
invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
const-string v1, "com.blackberry.ids.APP_GUID"
invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
const-string v1, "com.blackberry.ids.REDIRECT_URI"
invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
const-string v1, "com.blackberry.ids.PREV_CLIENT_NONCE"
invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
const-string v1, "com.blackberry.ids.PREV_SERVER_ENTROPY"
invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
const-string v1, "com.blackberry.ids.NEXT_REQTOKEN"
invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
const-string v1, "com.blackberry.ids.USER_AGENT"
invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
const-string v1, "IDS_ACTIVITY_INTENT_CALLER"
const-string v2, "IDS_INTERNAL"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method protected final a(ILjava/lang/String;Z)V
.registers 11
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x0
const/4 v3, 0x1
const-string v0, "EditActivity failed request_id=%s result=%d info=%s"
new-array v1, v6, [Ljava/lang/Object;
iget-object v2, p0, Lcom/blackberry/ids/EditActivity;->f:Lcom/blackberry/ids/RequestId;
aput-object v2, v1, v4
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v3
aput-object p2, v1, v5
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-boolean v0, p0, Lcom/blackberry/ids/EditActivity;->g:Z
if-ne v0, v3, :cond_75
const-string v0, "EditActivity with Intent failed request_id=%s result=%d info=%s"
new-array v1, v6, [Ljava/lang/Object;
iget-object v2, p0, Lcom/blackberry/ids/EditActivity;->f:Lcom/blackberry/ids/RequestId;
aput-object v2, v1, v4
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v3
aput-object p2, v1, v5
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
if-eqz p3, :cond_43
const-string v0, "EditActivity - fail request_id=%s - Releasing challenge semaphore"
new-array v1, v3, [Ljava/lang/Object;
iget-object v2, p0, Lcom/blackberry/ids/EditActivity;->f:Lcom/blackberry/ids/RequestId;
aput-object v2, v1, v4
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {p0}, Lcom/blackberry/ids/EditActivity;->a()V
sget-object v0, Lcom/blackberry/ids/IDS;->a:Ljava/util/concurrent/Semaphore;
invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
:cond_43
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-string v1, "IDS_ACTIVTY_RESULT"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string v1, "IDS_ACTIVTY_INFO"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const/4 v1, -0x2
invoke-virtual {p0, v1, v0}, Lcom/blackberry/ids/EditActivity;->setResult(ILandroid/content/Intent;)V
const v0, 0xc3ea
if-eq p1, v0, :cond_60
const v0, 0xc354
if-ne p1, v0, :cond_65
:cond_60
sget-object v0, Lcom/blackberry/ids/UserAuthState$AuthState;->NOT_AUTHENTICATED:Lcom/blackberry/ids/UserAuthState$AuthState;
invoke-static {v0}, Lcom/blackberry/ids/UserAuthState;->b(Lcom/blackberry/ids/UserAuthState$AuthState;)V
:cond_65
const v0, 0xc3ec
if-ne p1, v0, :cond_6f
sget-object v0, Lcom/blackberry/ids/UserAuthState$AuthState;->NO_LONGER_VALID:Lcom/blackberry/ids/UserAuthState$AuthState;
invoke-static {v0}, Lcom/blackberry/ids/UserAuthState;->b(Lcom/blackberry/ids/UserAuthState$AuthState;)V
:goto_6f
:cond_6f
iput-boolean v3, p0, Lcom/blackberry/ids/EditActivity;->k:Z
invoke-virtual {p0}, Lcom/blackberry/ids/EditActivity;->finish()V
return-void
:cond_75
iget-object v0, p0, Lcom/blackberry/ids/EditActivity;->f:Lcom/blackberry/ids/RequestId;
invoke-static {p0, v0, p1, p2}, Lcom/blackberry/ids/ManageIdentityListener;->manageIdentityFailed(Landroid/content/Context;Lcom/blackberry/ids/RequestId;ILjava/lang/String;)V
goto :goto_6f
.end method
.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/blackberry/ids/EditActivity;->h:Landroid/webkit/WebView;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/blackberry/ids/EditActivity;->h:Landroid/webkit/WebView;
invoke-static {p2}, Lcom/blackberry/ids/StringUtils;->a(Ljava/lang/String;)[B
move-result-object v1
invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V
:cond_d
return-void
.end method
.method public onBackPressed()V
.registers 7
const/4 v5, 0x0
const/4 v4, 0x1
const/4 v3, 0x0
const-string v0, "EditActivity request_id=%s onBackPressed -- Exiting webview and calling it as success"
new-array v1, v4, [Ljava/lang/Object;
iget-object v2, p0, Lcom/blackberry/ids/EditActivity;->f:Lcom/blackberry/ids/RequestId;
aput-object v2, v1, v3
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
iput-object v5, p0, Lcom/blackberry/ids/EditActivity;->h:Landroid/webkit/WebView;
iget-boolean v0, p0, Lcom/blackberry/ids/WebActivity;->d:Z
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/blackberry/ids/EditActivity;->j:Lcom/blackberry/ids/WebActivity$PingAsync;
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/blackberry/ids/EditActivity;->j:Lcom/blackberry/ids/WebActivity$PingAsync;
invoke-virtual {v0, v4}, Lcom/blackberry/ids/WebActivity$PingAsync;->cancel(Z)Z
:cond_1d
iput-object v5, p0, Lcom/blackberry/ids/EditActivity;->j:Lcom/blackberry/ids/WebActivity$PingAsync;
iput-boolean v3, p0, Lcom/blackberry/ids/WebActivity;->d:Z
:cond_21
const/4 v0, -0x2
invoke-direct {p0, v0}, Lcom/blackberry/ids/EditActivity;->a(I)V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 16
const-string v1, " + Lcom/blackberry/ids/EditActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/blackberry/ids/WebActivity;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/blackberry/ids/EditActivity;->getIntent()Landroid/content/Intent;
move-result-object v8
const-string v0, "IDS_ACTIVITY_INTENT_CALLER"
invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_1b
const-string v1, "IDS_ACTIVITY_CALLER_BBM_UI"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
const/4 v2, 0x1
if-ne v1, v2, :cond_1b
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/blackberry/ids/EditActivity;->g:Z
:cond_1b
iget-boolean v1, p0, Lcom/blackberry/ids/EditActivity;->g:Z
const/4 v2, 0x1
if-ne v1, v2, :cond_1e0
new-instance v0, Lcom/blackberry/ids/RequestId;
invoke-direct {v0}, Lcom/blackberry/ids/RequestId;-><init>()V
iput-object v0, p0, Lcom/blackberry/ids/EditActivity;->f:Lcom/blackberry/ids/RequestId;
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-string v1, "IDS_ACTIVTY_RESULT"
const v2, 0xc34f
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string v1, "IDS_ACTIVTY_INFO"
const-string v2, "EditActivity failed on unknown reason"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const/4 v1, -0x2
invoke-virtual {p0, v1, v0}, Lcom/blackberry/ids/EditActivity;->setResult(ILandroid/content/Intent;)V
sget-object v0, Lcom/blackberry/ids/IDS;->a:Ljava/util/concurrent/Semaphore;
invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z
move-result v0
if-nez v0, :cond_5e
const-string v0, "EditActivity request_id=%s onCreate With next Intent : Cannot continue Challenge/Manage is already pending"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/blackberry/ids/EditActivity;->f:Lcom/blackberry/ids/RequestId;
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
const v0, 0xc3f0
const-string v1, "A login/edit activity is already pending."
const/4 v2, 0x0
invoke-virtual {p0, v0, v1, v2}, Lcom/blackberry/ids/EditActivity;->a(ILjava/lang/String;Z)V
:goto_5d
const-string v1, " - Lcom/blackberry/ids/EditActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_5e
invoke-virtual {p0}, Lcom/blackberry/ids/EditActivity;->b()I
move-result v0
if-eqz v0, :cond_6b
const-string v1, "Error while acquiring manage acc queue lock"
const/4 v2, 0x1
invoke-virtual {p0, v0, v1, v2}, Lcom/blackberry/ids/EditActivity;->a(ILjava/lang/String;Z)V
goto :goto_5d
:cond_6b
const-string v0, "EditActivity - onCreate request_id=%s - Acquired challenge semaphore"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/blackberry/ids/EditActivity;->f:Lcom/blackberry/ids/RequestId;
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;
move-result-object v1
monitor-enter v1
:try_start_7d
invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;
move-result-object v0
invoke-virtual {v0}, Lcom/blackberry/ids/BBIDStorage;->g()V
invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;
move-result-object v0
invoke-virtual {v0}, Lcom/blackberry/ids/BBIDStorage;->d()Ljava/lang/String;
move-result-object v4
if-nez v4, :cond_a9
const-string v0, "EditActivity request_id=%s onCreate With next Intent : No existing Request Token"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
iget-object v4, p0, Lcom/blackberry/ids/EditActivity;->f:Lcom/blackberry/ids/RequestId;
aput-object v4, v2, v3
invoke-static {v0, v2}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v0, "Request token not found, cannot proceed with manage account intent"
const v2, 0xc3ea
const/4 v3, 0x1
invoke-virtual {p0, v2, v0, v3}, Lcom/blackberry/ids/EditActivity;->a(ILjava/lang/String;Z)V
monitor-exit v1
:try_end_a5
.catchall {:try_start_7d .. :try_end_a5} :catchall_a6
goto :goto_5d
:catchall_a6
move-exception v0
monitor-exit v1
throw v0
:try_start_a9
:cond_a9
invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;
move-result-object v0
iget-object v6, v0, Lcom/blackberry/ids/BBIDStorage;->b:Ljava/lang/String;
invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;
move-result-object v0
invoke-virtual {v0}, Lcom/blackberry/ids/BBIDStorage;->a()Ljava/lang/String;
move-result-object v5
invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;
move-result-object v0
invoke-virtual {v0}, Lcom/blackberry/ids/BBIDStorage;->b()Ljava/lang/String;
move-result-object v3
invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;
move-result-object v0
invoke-virtual {v0}, Lcom/blackberry/ids/BBIDStorage;->c()Ljava/lang/String;
move-result-object v2
monitor-exit v1
:try_end_c8
.catchall {:try_start_a9 .. :try_end_c8} :catchall_a6
invoke-static {}, Lcom/blackberry/ids/IDS;->d()Ljava/lang/String;
move-result-object v1
invoke-static {}, Lcom/blackberry/ids/IDS;->e()Landroid/net/Uri;
move-result-object v7
invoke-static {}, Lcom/blackberry/ids/IDS;->f()Ljava/lang/String;
move-result-object v0
const-string v9, "EditActivity request_id=%s onCreate With next Intent"
const/4 v10, 0x1
new-array v10, v10, [Ljava/lang/Object;
const/4 v11, 0x0
iget-object v12, p0, Lcom/blackberry/ids/EditActivity;->f:Lcom/blackberry/ids/RequestId;
aput-object v12, v10, v11
invoke-static {v9, v10}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
:goto_e1
iget-object v9, p0, Lcom/blackberry/ids/EditActivity;->f:Lcom/blackberry/ids/RequestId;
sput-object v9, Lcom/blackberry/ids/WebActivity;->c:Lcom/blackberry/ids/RequestId;
new-instance v9, Landroid/webkit/WebView;
invoke-direct {v9, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
new-instance v10, Lcom/blackberry/ids/WebActivity$CookieTracker;
invoke-direct {v10}, Lcom/blackberry/ids/WebActivity$CookieTracker;-><init>()V
iput-object v10, p0, Lcom/blackberry/ids/EditActivity;->e:Lcom/blackberry/ids/WebActivity$CookieTracker;
iget-object v10, p0, Lcom/blackberry/ids/EditActivity;->e:Lcom/blackberry/ids/WebActivity$CookieTracker;
invoke-virtual {v10}, Lcom/blackberry/ids/WebActivity$CookieTracker;->setAcceptCookies()V
iget-object v10, p0, Lcom/blackberry/ids/EditActivity;->e:Lcom/blackberry/ids/WebActivity$CookieTracker;
iget-object v11, p0, Lcom/blackberry/ids/EditActivity;->f:Lcom/blackberry/ids/RequestId;
invoke-virtual {v10, v11}, Lcom/blackberry/ids/WebActivity$CookieTracker;->clearCookies(Lcom/blackberry/ids/RequestId;)V
invoke-virtual {v9}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v10
const/4 v11, 0x1
invoke-virtual {v10, v11}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
new-instance v10, Lcom/blackberry/ids/EditActivity$JSInterface;
invoke-direct {v10, p0}, Lcom/blackberry/ids/EditActivity$JSInterface;-><init>(Lcom/blackberry/ids/EditActivity;)V
const-string v11, "HTMLOUT"
invoke-virtual {v9, v10, v11}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
new-instance v10, Lcom/blackberry/ids/EditActivity$1;
invoke-direct {v10, p0, v1, v9}, Lcom/blackberry/ids/EditActivity$1;-><init>(Lcom/blackberry/ids/EditActivity;Ljava/lang/String;Landroid/webkit/WebView;)V
invoke-virtual {v9, v10}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;
move-result-object v7
const-string v10, "manageAccount"
invoke-virtual {v7, v10}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v7
invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
move-result-object v7
invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v7
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const/16 v10, 0x3a
invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const/16 v6, 0x3a
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
new-instance v6, Lcom/blackberry/ids/PostBody;
invoke-direct {v6}, Lcom/blackberry/ids/PostBody;-><init>()V
const-string v10, "grant_type"
const-string v11, "id_token"
invoke-virtual {v6, v10, v11}, Lcom/blackberry/ids/PostBody;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/blackberry/ids/PostBody;
move-result-object v6
const-string v10, "id_token"
invoke-virtual {v6, v10, v4}, Lcom/blackberry/ids/PostBody;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/blackberry/ids/PostBody;
move-result-object v4
const-string v6, "redirect_uri"
invoke-virtual {v4, v6, v1}, Lcom/blackberry/ids/PostBody;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/blackberry/ids/PostBody;
move-result-object v1
const-string v4, "state"
const-string v6, "manageAccount"
invoke-virtual {v1, v4, v6}, Lcom/blackberry/ids/PostBody;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/blackberry/ids/PostBody;
move-result-object v4
const/4 v1, 0x0
:try_start_16c
invoke-static {v2, v3}, Lcom/blackberry/ids/CryptoUtils;->a(Ljava/lang/String;Ljava/lang/String;)[B
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v6, ":"
invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v4}, Lcom/blackberry/ids/PostBody;->getString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v3, v2}, Lcom/blackberry/ids/CryptoUtils;->a(Ljava/lang/String;[B)Ljava/lang/String;
:try_end_18e
.catch Lcom/blackberry/ids/CryptoException; {:try_start_16c .. :try_end_18e} :catch_24f
move-result-object v1
:goto_18f
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const/16 v3, 0x3a
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const-string v2, "client_secret"
invoke-virtual {v4, v2, v1}, Lcom/blackberry/ids/PostBody;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/blackberry/ids/PostBody;
const-string v1, "postUrl %s"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object v7, v2, v3
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v1, "postBody %s"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-virtual {v4}, Lcom/blackberry/ids/PostBody;->getString()Ljava/lang/String;
move-result-object v5
aput-object v5, v2, v3
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {v9}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/blackberry/ids/EditActivity;->g:Z
if-nez v0, :cond_268
invoke-virtual {p0, v9}, Lcom/blackberry/ids/EditActivity;->setContentView(Landroid/view/View;)V
invoke-virtual {v4}, Lcom/blackberry/ids/PostBody;->getString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/blackberry/ids/StringUtils;->a(Ljava/lang/String;)[B
move-result-object v0
invoke-virtual {v9, v7, v0}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V
goto/16 :goto_5d
:cond_1e0
if-eqz v0, :cond_1ea
const-string v1, "IDS_INTERNAL"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1f7
:cond_1ea
const-string v0, "EditActivity - ERROR - next intent not present and this activity is not ivoked internally - ignore silently"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->e(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {p0}, Lcom/blackberry/ids/EditActivity;->finish()V
goto/16 :goto_5d
:cond_1f7
new-instance v0, Lcom/blackberry/ids/RequestId;
const-string v1, "com.blackberry.ids.REQUEST_ID"
const/4 v2, -0x1
invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v1
invoke-direct {v0, v1}, Lcom/blackberry/ids/RequestId;-><init>(I)V
iput-object v0, p0, Lcom/blackberry/ids/EditActivity;->f:Lcom/blackberry/ids/RequestId;
const-string v0, "com.blackberry.ids.BASE_URI"
invoke-virtual {v8, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/net/Uri;
const-string v1, "com.blackberry.ids.CLIENT_ID"
invoke-virtual {v8, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
const-string v1, "com.blackberry.ids.APP_GUID"
invoke-virtual {v8, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
const-string v1, "com.blackberry.ids.NEXT_REQTOKEN"
invoke-virtual {v8, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
const-string v1, "com.blackberry.ids.REDIRECT_URI"
invoke-virtual {v8, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v1, "com.blackberry.ids.PREV_CLIENT_NONCE"
invoke-virtual {v8, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
const-string v1, "com.blackberry.ids.PREV_SERVER_ENTROPY"
invoke-virtual {v8, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string v1, "com.blackberry.ids.USER_AGENT"
invoke-virtual {v8, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v9, "EditActivity request_id=%s onCreate"
const/4 v10, 0x1
new-array v10, v10, [Ljava/lang/Object;
const/4 v11, 0x0
iget-object v12, p0, Lcom/blackberry/ids/EditActivity;->f:Lcom/blackberry/ids/RequestId;
aput-object v12, v10, v11
invoke-static {v9, v10}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
move-object v13, v1
move-object v1, v2
move-object v2, v3
move-object v3, v4
move-object v4, v5
move-object v5, v6
move-object v6, v7
move-object v7, v0
move-object v0, v13
goto/16 :goto_e1
:catch_24f
move-exception v2
const-string v2, "EditActivity request_id=%s Crypto exception while creating signature for ManageIdentity post operation"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v6, 0x0
iget-object v10, p0, Lcom/blackberry/ids/EditActivity;->f:Lcom/blackberry/ids/RequestId;
aput-object v10, v3, v6
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->e(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v2, "Crypto exception while creating signature for ManageIdentity"
const v3, 0xc34f
const/4 v6, 0x1
invoke-virtual {p0, v3, v2, v6}, Lcom/blackberry/ids/EditActivity;->a(ILjava/lang/String;Z)V
goto/16 :goto_18f
:cond_268
iput-object v9, p0, Lcom/blackberry/ids/EditActivity;->h:Landroid/webkit/WebView;
new-instance v0, Landroid/widget/RelativeLayout;
invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/blackberry/ids/EditActivity;->a:Landroid/widget/RelativeLayout;
iget-object v0, p0, Lcom/blackberry/ids/EditActivity;->a:Landroid/widget/RelativeLayout;
const/16 v1, 0x63
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V
iget-object v0, p0, Lcom/blackberry/ids/EditActivity;->a:Landroid/widget/RelativeLayout;
new-instance v1, Landroid/view/ViewGroup$LayoutParams;
const/4 v2, -0x1
const/4 v3, -0x1
invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
const-string v0, "IDS_ACTIVITY_BBM_BG"
const/4 v1, 0x0
invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
if-eqz v0, :cond_297
iget-object v1, p0, Lcom/blackberry/ids/EditActivity;->a:Landroid/widget/RelativeLayout;
invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V
iget-object v1, p0, Lcom/blackberry/ids/EditActivity;->h:Landroid/webkit/WebView;
invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V
:cond_297
const-string v0, "IDS_ACTIVITY_BBM_IMG"
const/4 v1, 0x0
invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
new-instance v1, Landroid/widget/ImageView;
invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Lcom/blackberry/ids/EditActivity;->b:Landroid/widget/ImageView;
iget-object v1, p0, Lcom/blackberry/ids/EditActivity;->b:Landroid/widget/ImageView;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setId(I)V
if-eqz v0, :cond_2ce
invoke-virtual {p0}, Lcom/blackberry/ids/EditActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
iget-object v2, p0, Lcom/blackberry/ids/EditActivity;->b:Landroid/widget/ImageView;
invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;
const/4 v2, -0x2
const/4 v3, -0x2
invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
const/16 v2, 0xd
const/4 v3, -0x1
invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
iget-object v2, p0, Lcom/blackberry/ids/EditActivity;->a:Landroid/widget/RelativeLayout;
iget-object v3, p0, Lcom/blackberry/ids/EditActivity;->b:Landroid/widget/ImageView;
invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
:cond_2ce
new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;
const/4 v2, -0x1
const/4 v3, -0x1
invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
const/16 v2, 0x8
invoke-virtual {v9, v2}, Landroid/webkit/WebView;->setVisibility(I)V
iget-object v2, p0, Lcom/blackberry/ids/EditActivity;->a:Landroid/widget/RelativeLayout;
invoke-virtual {v2, v9, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new-instance v1, Landroid/widget/ProgressBar;
invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Lcom/blackberry/ids/EditActivity;->i:Landroid/widget/ProgressBar;
iget-object v1, p0, Lcom/blackberry/ids/EditActivity;->i:Landroid/widget/ProgressBar;
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V
const-string v1, "IDS_ACTIVITY_BBM_SPINNER"
const/4 v2, 0x0
invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v1
if-eqz v1, :cond_303
iget-object v2, p0, Lcom/blackberry/ids/EditActivity;->i:Landroid/widget/ProgressBar;
invoke-virtual {p0}, Lcom/blackberry/ids/EditActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_303
if-eqz v0, :cond_35f
new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;
const/4 v1, -0x2
const/4 v2, -0x2
invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
const/16 v1, 0xe
const/4 v2, -0x1
invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
const/4 v1, 0x3
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
invoke-virtual {p0}, Lcom/blackberry/ids/EditActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const/4 v2, 0x1
const/high16 v3, 0x4120
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v1
float-to-int v1, v1
iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I
iget-object v1, p0, Lcom/blackberry/ids/EditActivity;->a:Landroid/widget/RelativeLayout;
iget-object v2, p0, Lcom/blackberry/ids/EditActivity;->i:Landroid/widget/ProgressBar;
invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
:goto_330
iget-object v0, p0, Lcom/blackberry/ids/EditActivity;->a:Landroid/widget/RelativeLayout;
invoke-virtual {p0, v0}, Lcom/blackberry/ids/EditActivity;->setContentView(Landroid/view/View;)V
new-instance v0, Lcom/blackberry/ids/WebActivity$PingAsync;
invoke-direct {v0, p0}, Lcom/blackberry/ids/WebActivity$PingAsync;-><init>(Lcom/blackberry/ids/WebActivity;)V
iput-object v0, p0, Lcom/blackberry/ids/EditActivity;->j:Lcom/blackberry/ids/WebActivity$PingAsync;
iget-object v0, p0, Lcom/blackberry/ids/EditActivity;->j:Lcom/blackberry/ids/WebActivity$PingAsync;
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/String;
const/4 v2, 0x0
aput-object v7, v1, v2
const/4 v2, 0x1
invoke-virtual {v4}, Lcom/blackberry/ids/PostBody;->getString()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-virtual {v0, v1}, Lcom/blackberry/ids/WebActivity$PingAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
new-instance v1, Lcom/blackberry/ids/EditActivity$2;
invoke-direct {v1, p0}, Lcom/blackberry/ids/EditActivity$2;-><init>(Lcom/blackberry/ids/EditActivity;)V
const-wide/16 v2, 0xbb8
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
goto/16 :goto_5d
:cond_35f
new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;
const/4 v1, -0x2
const/4 v2, -0x2
invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
const/16 v1, 0xd
const/4 v2, -0x1
invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
iget-object v1, p0, Lcom/blackberry/ids/EditActivity;->a:Landroid/widget/RelativeLayout;
iget-object v2, p0, Lcom/blackberry/ids/EditActivity;->i:Landroid/widget/ProgressBar;
invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
goto :goto_330
.end method
.method protected onDestroy()V
.registers 6
const-string v1, " + Lcom/blackberry/ids/EditActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x0
const/4 v3, 0x1
invoke-super {p0}, Lcom/blackberry/ids/WebActivity;->onDestroy()V
invoke-virtual {p0}, Lcom/blackberry/ids/EditActivity;->isFinishing()Z
move-result v0
if-eqz v0, :cond_23
const-string v0, "EditActivity request_id=%s onDestroy - Final"
new-array v1, v3, [Ljava/lang/Object;
iget-object v2, p0, Lcom/blackberry/ids/EditActivity;->f:Lcom/blackberry/ids/RequestId;
aput-object v2, v1, v4
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-boolean v0, p0, Lcom/blackberry/ids/EditActivity;->k:Z
if-nez v0, :cond_22
const-string v0, "EditActivity failed EditActivity failed - unknown reason"
const v1, 0xc34f
invoke-virtual {p0, v1, v0, v3}, Lcom/blackberry/ids/EditActivity;->a(ILjava/lang/String;Z)V
:cond_22
:goto_22
const-string v1, " - Lcom/blackberry/ids/EditActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_23
const-string v0, "EditActivity request_id=%s onDestroy - Might be a restart"
new-array v1, v3, [Ljava/lang/Object;
iget-object v2, p0, Lcom/blackberry/ids/EditActivity;->f:Lcom/blackberry/ids/RequestId;
aput-object v2, v1, v4
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-boolean v0, p0, Lcom/blackberry/ids/EditActivity;->g:Z
if-eqz v0, :cond_22
const-string v0, "EditActivity request_id=%s onDestroy - Releasing challenge semaphore during restart"
new-array v1, v3, [Ljava/lang/Object;
iget-object v2, p0, Lcom/blackberry/ids/EditActivity;->f:Lcom/blackberry/ids/RequestId;
aput-object v2, v1, v4
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
sget-object v0, Lcom/blackberry/ids/IDS;->a:Ljava/util/concurrent/Semaphore;
invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
goto :goto_22
.end method
.method public bridge synthetic onPause()V
.registers 3
const-string v1, " + Lcom/blackberry/ids/EditActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/blackberry/ids/WebActivity;->onPause()V
const-string v1, " - Lcom/blackberry/ids/EditActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method