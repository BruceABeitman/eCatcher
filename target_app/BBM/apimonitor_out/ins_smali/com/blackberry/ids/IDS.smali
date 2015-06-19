.class public Lcom/blackberry/ids/IDS;
.super Ljava/lang/Object;
.source "IDS.java"
.field public static final IDS_BBID_AUTH_USER:I = 0x0
.field public static final IDS_BBID_LAUNCH_EDIT:I = 0x0
.field public static final IDS_BBID_LEVEL_AUTH_OFFLINE:I = 0x0
.field public static final IDS_BBID_LEVEL_AUTH_ONLINE:I = 0x1
.field public static final IDS_BBID_TRIGGER_EMAIL_CONF:I = 0x1
.field public static final IDS_CLIENT_BBM_CORE:Ljava/lang/String; = "ids_client_bbmcore"
.field public static final IDS_CLIENT_BBM_UI:Ljava/lang/String; = "ids_client_bbmui"
.field public static final IDS_CLIENT_ICEBERG:Ljava/lang/String; = "ids_client_iceberg"
.field public static final IDS_CLIENT_PLATFORM:Ljava/lang/String; = "ids_client_platform"
.field public static final IDS_CLIENT_TEST:Ljava/lang/String; = "ids_client_test"
.field public static final IDS_CLIENT_TEST2:Ljava/lang/String; = "ids_client_test2"
.field public static final IDS_ECOSYSTEM_DEV:Ljava/lang/String; = "dev"
.field public static final IDS_ECOSYSTEM_PRODUCTION:Ljava/lang/String; = "production"
.field public static final IDS_ECOSYSTEM_STAGING:Ljava/lang/String; = "staging"
.field public static final IDS_ECOSYSTEM_STR:Ljava/lang/String; = "str"
.field public static final IDS_IDENTITY_CHANGE_NOTIFY:I = 0x0
.field public static final IDS_INFO_CA_FAIL:Ljava/lang/String; = "CA trust cannot be established"
.field public static final IDS_INFO_CONN_FAIL:Ljava/lang/String; = "No Connection"
.field public static final IDS_INFO_NOT_INIT:Ljava/lang/String; = "Not initialized"
.field public static final IDS_INTENT_CALLER_BBM_UI:Ljava/lang/String; = "IDS_ACTIVITY_CALLER_BBM_UI"
.field public static final IDS_INTENT_EXTRA_BBM_BG:Ljava/lang/String; = "IDS_ACTIVITY_BBM_BG"
.field public static final IDS_INTENT_EXTRA_BBM_IMG:Ljava/lang/String; = "IDS_ACTIVITY_BBM_IMG"
.field public static final IDS_INTENT_EXTRA_BBM_SPINNER:Ljava/lang/String; = "IDS_ACTIVITY_BBM_SPINNER"
.field public static final IDS_INTENT_EXTRA_BBM_SPINNER_DELAY:Ljava/lang/String; = "IDS_ACTIVITY_BBM_SPINNER_DELAY"
.field public static final IDS_INTENT_EXTRA_CALLER:Ljava/lang/String; = "IDS_ACTIVITY_INTENT_CALLER"
.field public static final IDS_INTENT_EXTRA_CHALLENGE_BACKPRESS_CB_INTENT:Ljava/lang/String; = "IDS_CHALLENGE_BACKPRESS_CB_INTENT"
.field public static final IDS_INTENT_EXTRA_FAILURE_CB_INTENT:Ljava/lang/String; = "IDS_FAILURE_CB_INTENT"
.field public static final IDS_INTENT_EXTRA_INFO_S:Ljava/lang/String; = "IDS_ACTIVTY_INFO"
.field public static final IDS_INTENT_EXTRA_RESULT_I:Ljava/lang/String; = "IDS_ACTIVTY_RESULT"
.field public static final IDS_INTENT_EXTRA_SUCCESS_CB_INTENT:Ljava/lang/String; = "IDS_SUCCESS_CB_INTENT"
.field public static final IDS_NOTIFY_START:I = 0x0
.field public static final IDS_NOTIFY_STOP:I = 0x1
.field public static final IDS_OPT_CLIENT_ID:I = 0x3
.field public static final IDS_OPT_ECOSYSTEM:I = 0x5
.field public static final IDS_OPT_GROUP_ID:I = 0x1
.field public static final IDS_OPT_GUI_ALLOWED:I = 0x0
.field public static final IDS_OPT_SERVER_URL:I = 0x4
.field public static final IDS_OPT_VERBOSITY:I = 0x2
.field static final a:Ljava/util/concurrent/Semaphore;
.field private static final b:Ljava/util/concurrent/ExecutorService;
.field private static c:Z
.field private static d:Landroid/content/Context;
.field private static e:Lcom/blackberry/ids/BBIDStorage;
.field private static f:Landroid/content/Context;
.field private static g:I
.field private static h:Landroid/net/Uri;
.field private static i:Ljava/lang/String;
.field private static j:Ljava/lang/String;
.field private static k:Lcom/blackberry/ids/TokenTempCache;
.field private static l:I
.field private static m:Lcom/blackberry/ids/BlockedTokenList;
.field private static n:Ljavax/net/ssl/TrustManagerFactory;
.field private static final o:Ljava/util/regex/Pattern;
.field private static final p:[B
.field private static final q:Ljava/math/BigInteger;
.method static constructor <clinit>()V
.registers 3
const/4 v2, 0x0
new-instance v0, Lcom/blackberry/ids/NamedThreadFactory;
const-string v1, "IDS-worker"
invoke-direct {v0, v1}, Lcom/blackberry/ids/NamedThreadFactory;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;
move-result-object v0
sput-object v0, Lcom/blackberry/ids/IDS;->b:Ljava/util/concurrent/ExecutorService;
new-instance v0, Ljava/util/concurrent/Semaphore;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V
sput-object v0, Lcom/blackberry/ids/IDS;->a:Ljava/util/concurrent/Semaphore;
const/4 v0, 0x0
sput-boolean v0, Lcom/blackberry/ids/IDS;->c:Z
sput-object v2, Lcom/blackberry/ids/IDS;->k:Lcom/blackberry/ids/TokenTempCache;
const v0, 0xea60
sput v0, Lcom/blackberry/ids/IDS;->l:I
sput-object v2, Lcom/blackberry/ids/IDS;->m:Lcom/blackberry/ids/BlockedTokenList;
sput-object v2, Lcom/blackberry/ids/IDS;->n:Ljavax/net/ssl/TrustManagerFactory;
const-string v0, ".*;\\s*charset\\s*=\\s*([^\\s;]*)"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/blackberry/ids/IDS;->o:Ljava/util/regex/Pattern;
const/16 v0, 0x10
new-array v0, v0, [B
fill-array-data v0, :array_40
sput-object v0, Lcom/blackberry/ids/IDS;->p:[B
new-instance v0, Ljava/math/BigInteger;
sget-object v1, Lcom/blackberry/ids/IDS;->p:[B
invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V
sput-object v0, Lcom/blackberry/ids/IDS;->q:Ljava/math/BigInteger;
return-void
nop
:array_40
.array-data 0x1
0x94t
0xd2t
0x5et
0x11t
0xbt
0x75t
0x85t
0xeft
0x34t
0x13t
0x29t
0x34t
0xc6t
0xf2t
0x9ct
0x5at
.end array-data
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic a(I)I
.registers 1
sput p0, Lcom/blackberry/ids/IDS;->g:I
return p0
.end method
.method private static a(ILjava/lang/String;)I
.registers 8
const/4 v1, -0x1
const/4 v2, 0x1
const/4 v0, 0x0
const/4 v3, 0x3
if-eq p0, v3, :cond_16
const-string v3, "enter IDS.ids_set_option option=%d value=%s"
const/4 v4, 0x2
new-array v4, v4, [Ljava/lang/Object;
invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v4, v0
aput-object p1, v4, v2
invoke-static {v3, v4}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
:cond_16
packed-switch p0, :pswitch_data_174
const-string v2, "exit IDS.ids_set_option"
new-array v0, v0, [Ljava/lang/Object;
invoke-static {v2, v0}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
move v0, v1
:goto_21
return v0
:pswitch_22
const-string v1, "exit IDS.ids_set_option"
new-array v2, v0, [Ljava/lang/Object;
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_21
:try_start_2a
:pswitch_2a
sget-object v1, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
iput-object p1, v1, Lcom/blackberry/ids/BBIDStorage;->b:Ljava/lang/String;
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
const/16 v3, 0x2c
if-ne v1, v3, :cond_7b
const-string v1, "https://authorize/"
sput-object v1, Lcom/blackberry/ids/IDS;->j:Ljava/lang/String;
:goto_3a
sget-object v1, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
iget-object v3, v1, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
const-string v4, "magic_word"
const/4 v5, 0x0
invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_ca
invoke-virtual {v1, v3}, Lcom/blackberry/ids/BBIDStorage;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_ab
const-string v4, "Integerity test - Mag1cW@rd"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_a3
const-string v1, "BBIDStorage.sanityCheck() -- seems to be Sane!"
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/Object;
invoke-static {v1, v3}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
move v1, v2
:goto_5e
if-nez v1, :cond_73
sget-object v1, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
const/4 v2, 0x0
const/4 v3, 0x0
const/4 v4, 0x0
invoke-virtual {v1, v2, v3, v4}, Lcom/blackberry/ids/BBIDStorage;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/blackberry/ids/IDS;->p()V
const-string v1, "ids_set_option:clientid - Encryption looked insane - flushed Refresh token, all RP Tokens and user prop"
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
:cond_73
:try_end_73
.catchall {:try_start_2a .. :try_end_73} :catchall_9a
const-string v1, "exit IDS.ids_set_option"
new-array v2, v0, [Ljava/lang/Object;
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_21
:cond_7b
:try_start_7b
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "ids"
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const/4 v3, 0x0
const/16 v4, 0xa
invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, "://localhost/authorize/"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
sput-object v1, Lcom/blackberry/ids/IDS;->j:Ljava/lang/String;
:try_end_99
.catchall {:try_start_7b .. :try_end_99} :catchall_9a
goto :goto_3a
:catchall_9a
move-exception v1
const-string v2, "exit IDS.ids_set_option"
new-array v0, v0, [Ljava/lang/Object;
invoke-static {v2, v0}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
throw v1
:try_start_a3
:cond_a3
const-string v2, "BBIDStorage.sanityCheck() -- Decrypted value didn\'t match the expected value!"
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/Object;
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
:cond_ab
const-string v2, "BBIDStorage.sanityCheck() -- Decryption Failed hence Storage content may not be sane!"
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/Object;
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v2, v1, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v2
const-string v3, "magic_word"
const-string v4, "Integerity test - Mag1cW@rd"
invoke-virtual {v1, v4}, Lcom/blackberry/ids/BBIDStorage;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v1
invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
move v1, v0
goto :goto_5e
:cond_ca
iget-object v3, v1, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v3
const-string v4, "magic_word"
const-string v5, "Integerity test - Mag1cW@rd"
invoke-virtual {v1, v5}, Lcom/blackberry/ids/BBIDStorage;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v1
invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
const-string v1, "BBIDStorage.sanityCheck() - first time -- writing the value into storage"
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/Object;
invoke-static {v1, v3}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
move v1, v2
goto/16 :goto_5e
:pswitch_ea
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
sput-object v1, Lcom/blackberry/ids/IDS;->h:Landroid/net/Uri;
:try_end_f0
.catchall {:try_start_a3 .. :try_end_f0} :catchall_9a
const-string v1, "exit IDS.ids_set_option"
new-array v2, v0, [Ljava/lang/Object;
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
goto/16 :goto_21
:pswitch_f9
:try_start_f9
const-string v2, "dev"
invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_115
invoke-static {}, Lcom/blackberry/ids/IDS;->getDevClientString()Ljava/lang/String;
move-result-object v1
const-string v2, "https://bbid06.ottawa.testnet.rim.net/authzservice"
invoke-static {v1, v2}, Lcom/blackberry/ids/IDS;->a(Ljava/lang/String;Ljava/lang/String;)I
:try_end_10a
.catchall {:try_start_f9 .. :try_end_10a} :catchall_9a
move-result v1
const-string v2, "exit IDS.ids_set_option"
new-array v0, v0, [Ljava/lang/Object;
invoke-static {v2, v0}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
move v0, v1
goto/16 :goto_21
:try_start_115
:cond_115
const-string v2, "str"
invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_131
invoke-static {}, Lcom/blackberry/ids/IDS;->getDevClientString()Ljava/lang/String;
move-result-object v1
const-string v2, "https://blackberryid.bbid.sw.rim.net/authzservice"
invoke-static {v1, v2}, Lcom/blackberry/ids/IDS;->a(Ljava/lang/String;Ljava/lang/String;)I
:try_end_126
.catchall {:try_start_115 .. :try_end_126} :catchall_9a
move-result v1
const-string v2, "exit IDS.ids_set_option"
new-array v0, v0, [Ljava/lang/Object;
invoke-static {v2, v0}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
move v0, v1
goto/16 :goto_21
:try_start_131
:cond_131
const-string v2, "staging"
invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_14d
invoke-static {}, Lcom/blackberry/ids/IDS;->getProdClientString()Ljava/lang/String;
move-result-object v1
const-string v2, "https://staging.blackberryid.blackberry.com/authzservice"
invoke-static {v1, v2}, Lcom/blackberry/ids/IDS;->a(Ljava/lang/String;Ljava/lang/String;)I
:try_end_142
.catchall {:try_start_131 .. :try_end_142} :catchall_9a
move-result v1
const-string v2, "exit IDS.ids_set_option"
new-array v0, v0, [Ljava/lang/Object;
invoke-static {v2, v0}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
move v0, v1
goto/16 :goto_21
:cond_14d
:try_start_14d
const-string v2, "production"
invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_169
invoke-static {}, Lcom/blackberry/ids/IDS;->getProdClientString()Ljava/lang/String;
move-result-object v1
const-string v2, "https://blackberryid.blackberry.com/authzservice"
invoke-static {v1, v2}, Lcom/blackberry/ids/IDS;->a(Ljava/lang/String;Ljava/lang/String;)I
:try_end_15e
.catchall {:try_start_14d .. :try_end_15e} :catchall_9a
move-result v1
const-string v2, "exit IDS.ids_set_option"
new-array v0, v0, [Ljava/lang/Object;
invoke-static {v2, v0}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
move v0, v1
goto/16 :goto_21
:cond_169
const-string v2, "exit IDS.ids_set_option"
new-array v0, v0, [Ljava/lang/Object;
invoke-static {v2, v0}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
move v0, v1
goto/16 :goto_21
nop
:pswitch_data_174
.packed-switch 0x2
:pswitch_22
:pswitch_2a
:pswitch_ea
:pswitch_f9
.end packed-switch
.end method
.method private static a(Ljava/lang/Object;ILcom/blackberry/ids/IChallengeCallback;Lcom/blackberry/ids/IFailureCallback;Lcom/blackberry/ids/RequestId;)I
.registers 14
const v0, 0xc3f0
const/4 v8, 0x1
const/4 v6, 0x0
new-instance v2, Lcom/blackberry/ids/IDS$11;
invoke-direct {v2, p3}, Lcom/blackberry/ids/IDS$11;-><init>(Lcom/blackberry/ids/IFailureCallback;)V
packed-switch p1, :pswitch_data_9e
:try_start_d
const-string v0, "IDS.do_challenge challenge_type is set to unsupported value"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->e(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {p4}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v0
const v1, 0xc356
const-string v3, "Invalid challenge_type value"
invoke-interface {v2, v0, v1, v3}, Lcom/blackberry/ids/IFailureCallback;->call(IILjava/lang/String;)V
:goto_21
:try_end_21
.catchall {:try_start_d .. :try_end_21} :catchall_64
const-string v0, "exit IDS.ids_challenge request_id=%s"
new-array v1, v8, [Ljava/lang/Object;
aput-object p4, v1, v6
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
move v0, v6
:goto_2b
return v0
:pswitch_2c
:try_start_2c
sget-object v1, Lcom/blackberry/ids/IDS;->a:Ljava/util/concurrent/Semaphore;
invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z
move-result v1
if-nez v1, :cond_55
const-string v1, "Already a challenge pending request_id=%s"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object p4, v3, v4
invoke-static {v1, v3}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {p4}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v1
const v3, 0xc3f0
const-string v4, "There is already a challenge pending."
invoke-interface {v2, v1, v3, v4}, Lcom/blackberry/ids/IFailureCallback;->call(IILjava/lang/String;)V
:try_end_4b
.catchall {:try_start_2c .. :try_end_4b} :catchall_64
const-string v1, "exit IDS.ids_challenge request_id=%s"
new-array v2, v8, [Ljava/lang/Object;
aput-object p4, v2, v6
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_2b
:try_start_55
:cond_55
sget-object v7, Lcom/blackberry/ids/IDS;->b:Ljava/util/concurrent/ExecutorService;
new-instance v0, Lcom/blackberry/ids/IDS$12;
move-object v1, p4
move-object v3, p0
move-object v4, p2
move-object v5, p3
invoke-direct/range {v0 .. v5}, Lcom/blackberry/ids/IDS$12;-><init>(Lcom/blackberry/ids/RequestId;Lcom/blackberry/ids/IFailureCallback;Ljava/lang/Object;Lcom/blackberry/ids/IChallengeCallback;Lcom/blackberry/ids/IFailureCallback;)V
invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
:try_end_63
.catchall {:try_start_55 .. :try_end_63} :catchall_64
goto :goto_21
:catchall_64
move-exception v0
const-string v1, "exit IDS.ids_challenge request_id=%s"
new-array v2, v8, [Ljava/lang/Object;
aput-object p4, v2, v6
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
throw v0
:pswitch_6f
:try_start_6f
const-string v0, "enter ids_verify_email, request_id=%s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p4, v1, v2
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_start_7a
:try_end_7a
.catchall {:try_start_6f .. :try_end_7a} :catchall_64
sget-object v0, Lcom/blackberry/ids/IDS;->b:Ljava/util/concurrent/ExecutorService;
new-instance v1, Lcom/blackberry/ids/IDS$14;
invoke-direct {v1, p4, p0, p2, p3}, Lcom/blackberry/ids/IDS$14;-><init>(Lcom/blackberry/ids/RequestId;Ljava/lang/Object;Lcom/blackberry/ids/IChallengeCallback;Lcom/blackberry/ids/IFailureCallback;)V
invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
:try_end_84
.catchall {:try_start_7a .. :try_end_84} :catchall_90
:try_start_84
const-string v0, "exit ids_verify_email, request_id=%s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p4, v1, v2
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_21
:catchall_90
move-exception v0
const-string v1, "exit ids_verify_email, request_id=%s"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object p4, v2, v3
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
throw v0
:try_end_9d
.catchall {:try_start_84 .. :try_end_9d} :catchall_64
nop
:pswitch_data_9e
.packed-switch 0x0
:pswitch_2c
:pswitch_6f
.end packed-switch
.end method
.method private static a(Ljava/lang/Object;ILcom/blackberry/ids/IManageIdentityCallback;Lcom/blackberry/ids/IFailureCallback;Lcom/blackberry/ids/RequestId;)I
.registers 13
const v1, 0xc3f0
const v0, 0xc3ea
const/4 v7, 0x2
const/4 v6, 0x1
const/4 v2, 0x0
const-string v3, "enter IDS.ids_manage_identity request_id=%s manage_identity_type=%s"
new-array v4, v7, [Ljava/lang/Object;
aput-object p4, v4, v2
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v4, v6
invoke-static {v3, v4}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
packed-switch p1, :pswitch_data_bc
:try_start_1b
const-string v0, "IDS.ids_manage_identity manage_identity_type is set to unsupported value"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->e(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {p4}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v0
const v1, 0xc356
const-string v3, "Invalid manage_identity_type value"
invoke-interface {p3, v0, v1, v3}, Lcom/blackberry/ids/IFailureCallback;->call(IILjava/lang/String;)V
:try_end_2f
.catchall {:try_start_1b .. :try_end_2f} :catchall_aa
:goto_2f
const-string v0, "exit IDS.ids_manage_identity request_id=%s manage_identity_type=%s"
new-array v1, v7, [Ljava/lang/Object;
aput-object p4, v1, v2
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v6
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
move v0, v2
:goto_3f
return v0
:try_start_40
:pswitch_40
sget-object v3, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
invoke-virtual {v3}, Lcom/blackberry/ids/BBIDStorage;->d()Ljava/lang/String;
move-result-object v3
if-nez v3, :cond_6f
const-string v1, "IDS.ids_manage_identity request_id=%s,  No request token to initiate manage account flow"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object p4, v3, v4
invoke-static {v1, v3}, Lcom/blackberry/ids/Ln;->e(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {p4}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v1
const v3, 0xc3ea
const-string v4, "Request token not found, cannot proceed with manage account."
invoke-interface {p3, v1, v3, v4}, Lcom/blackberry/ids/IFailureCallback;->call(IILjava/lang/String;)V
:try_end_5f
.catchall {:try_start_40 .. :try_end_5f} :catchall_aa
const-string v1, "exit IDS.ids_manage_identity request_id=%s manage_identity_type=%s"
new-array v3, v7, [Ljava/lang/Object;
aput-object p4, v3, v2
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v3, v6
invoke-static {v1, v3}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_3f
:cond_6f
:try_start_6f
sget-object v0, Lcom/blackberry/ids/IDS;->a:Ljava/util/concurrent/Semaphore;
invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z
move-result v0
if-nez v0, :cond_9f
const-string v0, "Already a challenge pending, request_id=%s"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object p4, v3, v4
invoke-static {v0, v3}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {p4}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v0
const v3, 0xc3f0
const-string v4, "There is already a challenge pending."
invoke-interface {p3, v0, v3, v4}, Lcom/blackberry/ids/IFailureCallback;->call(IILjava/lang/String;)V
:try_end_8e
.catchall {:try_start_6f .. :try_end_8e} :catchall_aa
const-string v0, "exit IDS.ids_manage_identity request_id=%s manage_identity_type=%s"
new-array v3, v7, [Ljava/lang/Object;
aput-object p4, v3, v2
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v3, v6
invoke-static {v0, v3}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
move v0, v1
goto :goto_3f
:try_start_9f
:cond_9f
sget-object v0, Lcom/blackberry/ids/IDS;->b:Ljava/util/concurrent/ExecutorService;
new-instance v1, Lcom/blackberry/ids/IDS$9;
invoke-direct {v1, p4, p3, p0, p2}, Lcom/blackberry/ids/IDS$9;-><init>(Lcom/blackberry/ids/RequestId;Lcom/blackberry/ids/IFailureCallback;Ljava/lang/Object;Lcom/blackberry/ids/IManageIdentityCallback;)V
invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
:try_end_a9
.catchall {:try_start_9f .. :try_end_a9} :catchall_aa
goto :goto_2f
:catchall_aa
move-exception v0
const-string v1, "exit IDS.ids_manage_identity request_id=%s manage_identity_type=%s"
new-array v3, v7, [Ljava/lang/Object;
aput-object p4, v3, v2
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v3, v6
invoke-static {v1, v3}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
throw v0
nop
:pswitch_data_bc
.packed-switch 0x0
:pswitch_40
.end packed-switch
.end method
.method private static a(Ljava/lang/Object;I[Ljava/lang/String;Lcom/blackberry/ids/IGetPropertiesCallback;Lcom/blackberry/ids/IFailureCallback;Lcom/blackberry/ids/RequestId;)I
.registers 16
const/4 v9, 0x1
const/4 v8, 0x0
const-string v0, "enter IDS.ids_get_properties request_id=%s type=%s properties=%s"
const/4 v1, 0x3
new-array v1, v1, [Ljava/lang/Object;
aput-object p5, v1, v8
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v9
const/4 v2, 0x2
const-string v3, ", "
invoke-static {p2, v3}, Lcom/blackberry/ids/StringUtils;->a([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_start_1b
sget-object v7, Lcom/blackberry/ids/IDS;->b:Ljava/util/concurrent/ExecutorService;
new-instance v0, Lcom/blackberry/ids/IDS$4;
move-object v1, p5
move v2, p1
move-object v3, p2
move-object v4, p0
move-object v5, p3
move-object v6, p4
invoke-direct/range {v0 .. v6}, Lcom/blackberry/ids/IDS$4;-><init>(Lcom/blackberry/ids/RequestId;I[Ljava/lang/String;Ljava/lang/Object;Lcom/blackberry/ids/IGetPropertiesCallback;Lcom/blackberry/ids/IFailureCallback;)V
invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
:try_end_2b
.catchall {:try_start_1b .. :try_end_2b} :catchall_35
const-string v0, "exit IDS.ids_get_properties request_id=%s"
new-array v1, v9, [Ljava/lang/Object;
aput-object p5, v1, v8
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
return v8
:catchall_35
move-exception v0
const-string v1, "exit IDS.ids_get_properties request_id=%s"
new-array v2, v9, [Ljava/lang/Object;
aput-object p5, v2, v8
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
throw v0
.end method
.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/blackberry/ids/IClearTokenCallback;Lcom/blackberry/ids/IFailureCallback;Lcom/blackberry/ids/RequestId;)I
.registers 16
const/4 v9, 0x1
const/4 v8, 0x0
:try_start_2
sget-object v7, Lcom/blackberry/ids/IDS;->b:Ljava/util/concurrent/ExecutorService;
new-instance v0, Lcom/blackberry/ids/IDS$1;
move-object v1, p5
move-object v2, p0
move-object v3, p1
move-object v4, p2
move-object v5, p3
move-object v6, p4
invoke-direct/range {v0 .. v6}, Lcom/blackberry/ids/IDS$1;-><init>(Lcom/blackberry/ids/RequestId;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/blackberry/ids/IClearTokenCallback;Lcom/blackberry/ids/IFailureCallback;)V
invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
:try_end_12
.catchall {:try_start_2 .. :try_end_12} :catchall_1c
const-string v0, "exit IDS.ids_clear_token request_id=%s"
new-array v1, v9, [Ljava/lang/Object;
aput-object p5, v1, v8
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
return v8
:catchall_1c
move-exception v0
const-string v1, "exit IDS.ids_clear_token request_id=%s"
new-array v2, v9, [Ljava/lang/Object;
aput-object p5, v2, v8
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
throw v0
.end method
.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/blackberry/ids/IGetTokenCallback;Lcom/blackberry/ids/IFailureCallback;Lcom/blackberry/ids/RequestId;)I
.registers 16
const/4 v9, 0x1
const/4 v8, 0x0
const-string v0, "enter IDS.ids_get_token request_id=%s type=%s appliesTo=%s"
const/4 v1, 0x3
new-array v1, v1, [Ljava/lang/Object;
aput-object p5, v1, v8
aput-object p1, v1, v9
const/4 v2, 0x2
aput-object p2, v1, v2
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_start_11
sget-object v7, Lcom/blackberry/ids/IDS;->b:Ljava/util/concurrent/ExecutorService;
new-instance v0, Lcom/blackberry/ids/IDS$2;
move-object v1, p5
move-object v2, p0
move-object v3, p1
move-object v4, p2
move-object v5, p3
move-object v6, p4
invoke-direct/range {v0 .. v6}, Lcom/blackberry/ids/IDS$2;-><init>(Lcom/blackberry/ids/RequestId;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/blackberry/ids/IGetTokenCallback;Lcom/blackberry/ids/IFailureCallback;)V
invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
:try_end_21
.catchall {:try_start_11 .. :try_end_21} :catchall_2b
const-string v0, "exit IDS.ids_get_token request_id=%s"
new-array v1, v9, [Ljava/lang/Object;
aput-object p5, v1, v8
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
return v8
:catchall_2b
move-exception v0
const-string v1, "exit IDS.ids_get_token request_id=%s"
new-array v2, v9, [Ljava/lang/Object;
aput-object p5, v2, v8
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
throw v0
.end method
.method private static a(Ljava/lang/String;Ljava/lang/String;)I
.registers 4
const/4 v0, -0x1
const/4 v1, 0x3
invoke-static {v1, p0}, Lcom/blackberry/ids/IDS;->ids_set_option(ILjava/lang/String;)I
move-result v1
if-ne v1, v0, :cond_9
:goto_8
:cond_8
return v0
:cond_9
const/4 v1, 0x4
invoke-static {v1, p1}, Lcom/blackberry/ids/IDS;->ids_set_option(ILjava/lang/String;)I
move-result v1
if-eq v1, v0, :cond_8
const/4 v0, 0x0
goto :goto_8
.end method
.method static synthetic a(Landroid/content/Context;)Landroid/content/Context;
.registers 1
sput-object p0, Lcom/blackberry/ids/IDS;->f:Landroid/content/Context;
return-object p0
.end method
.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "+"
const-string v1, "%2B"
invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/blackberry/ids/IDS;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_3
.end method
.method private static a(Ljavax/net/ssl/HttpsURLConnection;)Ljava/lang/String;
.registers 7
const/4 v5, 0x0
const/4 v4, 0x1
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getContentType()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_2f
const-string v2, "contentType: %s"
new-array v3, v4, [Ljava/lang/Object;
aput-object v0, v3, v5
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
sget-object v2, Lcom/blackberry/ids/IDS;->o:Ljava/util/regex/Pattern;
invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v0
invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z
move-result v2
if-eqz v2, :cond_2f
invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v0
const-string v2, "charset: %s"
new-array v3, v4, [Ljava/lang/Object;
aput-object v0, v3, v5
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
:cond_2f
:try_start_2f
invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;
:try_end_32
.catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_32} :catch_49
move-result-object v0
:cond_33
new-instance v2, Ljava/io/InputStreamReader;
new-instance v3, Ljava/io/BufferedInputStream;
invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
:goto_3d
invoke-virtual {v2}, Ljava/io/Reader;->read()I
move-result v0
const/4 v3, -0x1
if-eq v0, v3, :cond_53
int-to-char v0, v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_3d
:catch_49
move-exception v0
invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;
move-result-object v0
if-nez v0, :cond_33
const-string v0, ""
:goto_52
return-object v0
:cond_53
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_52
.end method
.method static synthetic a(Lcom/blackberry/ids/IManageIdentityCallback;Lcom/blackberry/ids/IFailureCallback;Lcom/blackberry/ids/RequestId;)V
.registers 9
const/4 v5, 0x0
const/4 v4, 0x1
const-string v0, "enter IDS.do_manage_identity request_id=%s"
new-array v1, v4, [Ljava/lang/Object;
aput-object p2, v1, v5
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
sget-object v0, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
invoke-virtual {v0}, Lcom/blackberry/ids/BBIDStorage;->g()V
new-instance v0, Ljava/util/concurrent/CountDownLatch;
invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V
new-instance v1, Lcom/blackberry/ids/IDS$7;
invoke-direct {v1, p2, v0}, Lcom/blackberry/ids/IDS$7;-><init>(Lcom/blackberry/ids/RequestId;Ljava/util/concurrent/CountDownLatch;)V
new-instance v2, Lcom/blackberry/ids/IDS$8;
invoke-direct {v2, p2, p0, p1, v1}, Lcom/blackberry/ids/IDS$8;-><init>(Lcom/blackberry/ids/RequestId;Lcom/blackberry/ids/IManageIdentityCallback;Lcom/blackberry/ids/IFailureCallback;Ljava/lang/Runnable;)V
invoke-static {v2}, Lcom/blackberry/ids/IDS$UiThreadRunner;->a(Ljava/lang/Runnable;)V
:try_start_22
const-string v1, "IDS.do_manage_identity request_id=%s awaiting"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object p2, v2, v3
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
const-string v0, "IDS.do_manage_identity request_id=%s done"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p2, v1, v2
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
:goto_3b
:try_end_3b
.catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_3b} :catch_45
const-string v0, "exit IDS.do_manage_identity request_id=%s"
new-array v1, v4, [Ljava/lang/Object;
aput-object p2, v1, v5
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
:catch_45
move-exception v0
const-string v0, "IDS.do_manage_identity request_id=%s was interrupted, returning"
new-array v1, v4, [Ljava/lang/Object;
aput-object p2, v1, v5
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->e(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_3b
.end method
.method static a(Lcom/blackberry/ids/RequestId;)V
.registers 3
new-instance v0, Lcom/blackberry/ids/IDS$6;
invoke-direct {v0}, Lcom/blackberry/ids/IDS$6;-><init>()V
const-string v1, "do_refresh_token"
invoke-static {v1, p0, v0}, Lcom/blackberry/ids/IDS;->a(Ljava/lang/String;Lcom/blackberry/ids/RequestId;Lcom/blackberry/ids/IDS$AzRequestHelper;)V
return-void
.end method
.method static synthetic a(Ljava/lang/String;Lcom/blackberry/ids/IClearTokenCallback;Lcom/blackberry/ids/IFailureCallback;Lcom/blackberry/ids/RequestId;)V
.registers 11
const v6, 0xc3e6
const/4 v5, 0x0
const/4 v4, 0x1
const/4 v3, 0x2
invoke-static {p0}, Lcom/blackberry/ids/IDS;->e(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_24
const-string v0, "do_clear_token - request_id=%s - Unknown AppliesTo is Requested : %s"
new-array v1, v3, [Ljava/lang/Object;
aput-object p3, v1, v5
aput-object p0, v1, v4
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {p3}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v0
const v1, 0xc359
const-string v2, "AppliesTo requested is not supported"
invoke-interface {p2, v0, v1, v2}, Lcom/blackberry/ids/IFailureCallback;->call(IILjava/lang/String;)V
:goto_23
return-void
:cond_24
sget-object v0, Lcom/blackberry/ids/IDS;->m:Lcom/blackberry/ids/BlockedTokenList;
invoke-virtual {p3}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v1
invoke-virtual {v0, v1, v4, p0}, Lcom/blackberry/ids/BlockedTokenList;->a(IILjava/lang/String;)I
move-result v0
if-eqz v0, :cond_48
const-string v0, "do_clear_token - request_id=%s - cannot do clear for blacklisted %s"
new-array v1, v3, [Ljava/lang/Object;
aput-object p3, v1, v5
aput-object p0, v1, v4
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {p3}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v0
const v1, 0xc361
const-string v2, "this token is blacklisted"
invoke-interface {p2, v0, v1, v2}, Lcom/blackberry/ids/IFailureCallback;->call(IILjava/lang/String;)V
goto :goto_23
:cond_48
sget-object v0, Lcom/blackberry/ids/IDS;->m:Lcom/blackberry/ids/BlockedTokenList;
invoke-virtual {p3}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v1
invoke-virtual {v0, v1, v3, p0}, Lcom/blackberry/ids/BlockedTokenList;->a(IILjava/lang/String;)I
move-result v0
if-eqz v0, :cond_72
const-string v1, "do_clear_token - request_id=%s - Too frequent clear for %s"
new-array v2, v3, [Ljava/lang/Object;
aput-object p3, v2, v5
aput-object p0, v2, v4
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
sget-object v1, Lcom/blackberry/ids/IDS;->m:Lcom/blackberry/ids/BlockedTokenList;
invoke-virtual {p3}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v2
invoke-virtual {v1, v2, v3, p0, v6}, Lcom/blackberry/ids/BlockedTokenList;->a(IILjava/lang/String;I)V
invoke-virtual {p3}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v1
const-string v2, "backoff, too frequent clear for same token"
invoke-interface {p2, v1, v0, v2}, Lcom/blackberry/ids/IFailureCallback;->call(IILjava/lang/String;)V
goto :goto_23
:cond_72
sget-object v0, Lcom/blackberry/ids/IDS;->m:Lcom/blackberry/ids/BlockedTokenList;
invoke-virtual {p3}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v1
invoke-virtual {v0, v1, v3, p0, v6}, Lcom/blackberry/ids/BlockedTokenList;->a(IILjava/lang/String;I)V
sget-object v0, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
invoke-virtual {v0}, Lcom/blackberry/ids/BBIDStorage;->g()V
sget-object v0, Lcom/blackberry/ids/IDS;->k:Lcom/blackberry/ids/TokenTempCache;
invoke-static {p0}, Lcom/blackberry/ids/TokenTempCache;->d(Ljava/lang/String;)V
invoke-virtual {p3}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v0
invoke-interface {p1, v0, v4}, Lcom/blackberry/ids/IClearTokenCallback;->call(II)V
goto :goto_23
.end method
.method private static a(Ljava/lang/String;Lcom/blackberry/ids/RequestId;Lcom/blackberry/ids/IDS$AzRequestHelper;)V
.registers 15
const/4 v1, 0x0
const/4 v9, 0x0
const/4 v8, 0x1
sget-object v2, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
monitor-enter v2
:try_start_6
sget-object v0, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
invoke-virtual {v0}, Lcom/blackberry/ids/BBIDStorage;->b()Ljava/lang/String;
move-result-object v0
sget-object v3, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
invoke-virtual {v3}, Lcom/blackberry/ids/BBIDStorage;->c()Ljava/lang/String;
move-result-object v3
sget-object v4, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
invoke-virtual {v4}, Lcom/blackberry/ids/BBIDStorage;->d()Ljava/lang/String;
move-result-object v4
if-eqz v0, :cond_1e
if-eqz v3, :cond_1e
if-nez v4, :cond_35
:cond_1e
sget-object v0, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
const/4 v1, 0x0
const/4 v3, 0x0
const/4 v4, 0x0
invoke-virtual {v0, v1, v3, v4}, Lcom/blackberry/ids/BBIDStorage;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v0
const v1, 0xc3ea
const-string v3, "No existing req_token"
const/4 v4, -0x1
invoke-interface {p2, v0, v1, v3, v4}, Lcom/blackberry/ids/IDS$AzRequestHelper;->failure(IILjava/lang/String;I)V
monitor-exit v2
:goto_34
:cond_34
:try_end_34
.catchall {:try_start_6 .. :try_end_34} :catchall_1ec
return-void
:cond_35
monitor-exit v2
invoke-static {}, Lcom/blackberry/ids/Entropy;->a()Ljava/lang/String;
move-result-object v4
new-instance v2, Ljava/net/URL;
sget-object v5, Lcom/blackberry/ids/IDS;->h:Landroid/net/Uri;
invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;
move-result-object v5
invoke-interface {p2, v5}, Lcom/blackberry/ids/IDS$AzRequestHelper;->buildUri(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;
move-result-object v5
invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
move-result-object v5
invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v2, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
const-string v5, "url = %s"
new-array v6, v8, [Ljava/lang/Object;
aput-object v2, v6, v9
invoke-static {v5, v6}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v5, Lcom/blackberry/ids/PostBody;
invoke-direct {v5}, Lcom/blackberry/ids/PostBody;-><init>()V
const-string v6, "redirect_uri"
sget-object v7, Lcom/blackberry/ids/IDS;->j:Ljava/lang/String;
invoke-virtual {v5, v6, v7}, Lcom/blackberry/ids/PostBody;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/blackberry/ids/PostBody;
invoke-interface {p2, v5}, Lcom/blackberry/ids/IDS$AzRequestHelper;->addParams(Lcom/blackberry/ids/PostBody;)Lcom/blackberry/ids/PostBody;
invoke-virtual {v5}, Lcom/blackberry/ids/PostBody;->getString()Ljava/lang/String;
move-result-object v5
const-string v6, "body = %s"
new-array v7, v8, [Ljava/lang/Object;
aput-object v5, v7, v9
invoke-static {v6, v7}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-static {v5}, Lcom/blackberry/ids/StringUtils;->a(Ljava/lang/String;)[B
move-result-object v6
sget-object v7, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
monitor-enter v7
:try_start_7d
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
sget-object v9, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
iget-object v9, v9, Lcom/blackberry/ids/BBIDStorage;->b:Ljava/lang/String;
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, ":"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
sget-object v9, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
invoke-virtual {v9}, Lcom/blackberry/ids/BBIDStorage;->a()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, ":"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
monitor-exit v7
:try_end_a9
.catchall {:try_start_7d .. :try_end_a9} :catchall_1ef
invoke-static {v3, v0}, Lcom/blackberry/ids/CryptoUtils;->a(Ljava/lang/String;Ljava/lang/String;)[B
move-result-object v3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v7, ":"
invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0, v3}, Lcom/blackberry/ids/CryptoUtils;->a(Ljava/lang/String;[B)Ljava/lang/String;
move-result-object v0
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v7, ":"
invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
:try_start_df
invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
check-cast v0, Ljavax/net/ssl/HttpsURLConnection;
:try_end_e5
.catchall {:try_start_df .. :try_end_e5} :catchall_3d8
.catch Ljava/io/IOException; {:try_start_df .. :try_end_e5} :catch_3db
:try_start_e5
sget-object v2, Lcom/blackberry/ids/IDS;->n:Ljavax/net/ssl/TrustManagerFactory;
if-eqz v2, :cond_1f2
const-string v2, "TLS"
invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
move-result-object v2
const/4 v7, 0x0
sget-object v9, Lcom/blackberry/ids/IDS;->n:Ljavax/net/ssl/TrustManagerFactory;
invoke-virtual {v9}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;
move-result-object v9
const/4 v10, 0x0
invoke-virtual {v2, v7, v9, v10}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
:try_end_fa
.catchall {:try_start_e5 .. :try_end_fa} :catchall_262
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_e5 .. :try_end_fa} :catch_207
.catch Ljava/security/KeyManagementException; {:try_start_e5 .. :try_end_fa} :catch_24c
.catch Ljava/io/IOException; {:try_start_e5 .. :try_end_fa} :catch_21d
move-object v1, v2
:goto_fb
if-eqz v1, :cond_26c
:try_start_fd
const-string v2, "do_az_request - request_id=%d --- setting trust factory to SSL socket"
const/4 v7, 0x1
new-array v7, v7, [Ljava/lang/Object;
const/4 v9, 0x0
invoke-virtual {p1}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v10
invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
aput-object v10, v7, v9
invoke-static {v2, v7}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
move-result-object v1
invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
const-string v1, "Connection"
const-string v2, "close"
invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "Content-Type"
const-string v2, "application/x-www-form-urlencoded"
invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "Authorization"
invoke-virtual {v0, v1, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "User-Agent"
sget-object v2, Lcom/blackberry/ids/IDS;->i:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "Content-Type: %s"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v5, 0x0
const-string v7, "Content-Type"
invoke-virtual {v0, v7}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
aput-object v7, v2, v5
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v1, "Authorization: %s"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v5, 0x0
const-string v7, "Authorization"
invoke-virtual {v0, v7}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
aput-object v7, v2, v5
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V
const-string v1, "POST"
invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V
array-length v1, v6
invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setFixedLengthStreamingMode(I)V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V
sget v1, Lcom/blackberry/ids/IDS;->l:I
invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V
sget v1, Lcom/blackberry/ids/IDS;->l:I
invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V
invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;
move-result-object v1
invoke-virtual {v1, v6}, Ljava/io/OutputStream;->write([B)V
invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I
move-result v2
invoke-static {v0}, Lcom/blackberry/ids/IDS;->a(Ljavax/net/ssl/HttpsURLConnection;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/blackberry/ids/IDS;->c(Ljava/lang/String;)Ljava/util/Map;
move-result-object v5
const-string v6, "status: %d"
const/4 v7, 0x1
new-array v7, v7, [Ljava/lang/Object;
const/4 v9, 0x0
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
aput-object v10, v7, v9
invoke-static {v6, v7}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v6, "response body: %s"
const/4 v7, 0x1
new-array v7, v7, [Ljava/lang/Object;
const/4 v9, 0x0
aput-object v1, v7, v9
invoke-static {v6, v7}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v6, "body params: %s"
const/4 v7, 0x1
new-array v7, v7, [Ljava/lang/Object;
const/4 v9, 0x0
aput-object v5, v7, v9
invoke-static {v6, v7}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
const/16 v6, 0xc8
if-ne v2, v6, :cond_29d
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v6, ":"
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1, v3}, Lcom/blackberry/ids/CryptoUtils;->a(Ljava/lang/String;[B)Ljava/lang/String;
move-result-object v1
const-string v2, "x-authzservice-sig"
invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_293
invoke-virtual {p1}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v1
const v2, 0xc35c
const-string v3, "x-authzservice-sig doesn\'t verify"
const/4 v4, -0x1
invoke-interface {p2, v1, v2, v3, v4}, Lcom/blackberry/ids/IDS$AzRequestHelper;->failure(IILjava/lang/String;I)V
:try_end_1e5
.catchall {:try_start_fd .. :try_end_1e5} :catchall_262
.catch Ljava/io/IOException; {:try_start_fd .. :try_end_1e5} :catch_21d
if-eqz v0, :cond_34
invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
goto/16 :goto_34
:catchall_1ec
move-exception v0
monitor-exit v2
throw v0
:catchall_1ef
move-exception v0
monitor-exit v7
throw v0
:cond_1f2
:try_start_1f2
const-string v2, "do_az_request - request_id=%d - SSLContext Init -- No Trust factory found!"
const/4 v7, 0x1
new-array v7, v7, [Ljava/lang/Object;
const/4 v9, 0x0
invoke-virtual {p1}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v10
invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
aput-object v10, v7, v9
invoke-static {v2, v7}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_205
.catchall {:try_start_1f2 .. :try_end_205} :catchall_262
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_1f2 .. :try_end_205} :catch_207
.catch Ljava/security/KeyManagementException; {:try_start_1f2 .. :try_end_205} :catch_24c
.catch Ljava/io/IOException; {:try_start_1f2 .. :try_end_205} :catch_21d
goto/16 :goto_fb
:catch_207
move-exception v2
:try_start_208
const-string v2, "do_az_request - request_id=%d - SSLContext Init -- NoSuchAlgorithm Exception !"
const/4 v7, 0x1
new-array v7, v7, [Ljava/lang/Object;
const/4 v9, 0x0
invoke-virtual {p1}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v10
invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
aput-object v10, v7, v9
invoke-static {v2, v7}, Lcom/blackberry/ids/Ln;->e(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_21b
.catchall {:try_start_208 .. :try_end_21b} :catchall_262
.catch Ljava/io/IOException; {:try_start_208 .. :try_end_21b} :catch_21d
goto/16 :goto_fb
:catch_21d
move-exception v1
move-object v11, v1
move-object v1, v0
move-object v0, v11
:try_start_221
:goto_221
const-string v2, "IOException in %s request_id=%s, %s"
const/4 v3, 0x3
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object p0, v3, v4
const/4 v4, 0x1
aput-object p1, v3, v4
const/4 v4, 0x2
invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;
move-result-object v5
aput-object v5, v3, v4
invoke-static {v0, v2, v3}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {p1}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v2
const v3, 0xc35c
invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;
move-result-object v0
const/4 v4, -0x1
invoke-interface {p2, v2, v3, v0, v4}, Lcom/blackberry/ids/IDS$AzRequestHelper;->failure(IILjava/lang/String;I)V
:try_end_245
.catchall {:try_start_221 .. :try_end_245} :catchall_3d8
if-eqz v1, :cond_34
invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
goto/16 :goto_34
:catch_24c
move-exception v2
:try_start_24d
const-string v2, "do_az_request - request_id=%d - SSLContext Init -- KeyManagement Exception !"
const/4 v7, 0x1
new-array v7, v7, [Ljava/lang/Object;
const/4 v9, 0x0
invoke-virtual {p1}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v10
invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
aput-object v10, v7, v9
invoke-static {v2, v7}, Lcom/blackberry/ids/Ln;->e(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_260
.catchall {:try_start_24d .. :try_end_260} :catchall_262
.catch Ljava/io/IOException; {:try_start_24d .. :try_end_260} :catch_21d
goto/16 :goto_fb
:catchall_262
move-exception v1
move-object v11, v1
move-object v1, v0
move-object v0, v11
:goto_266
if-eqz v1, :cond_26b
invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
:cond_26b
throw v0
:try_start_26c
:cond_26c
const-string v1, "do_az_request - request_id=%d - SSLContext Init -- Failed, Failing request as CA pinning cannot be completed"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-virtual {p1}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v4
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {p1}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v1
const v2, 0xc35c
const-string v3, "CA trust cannot be established"
const/4 v4, -0x1
invoke-interface {p2, v1, v2, v3, v4}, Lcom/blackberry/ids/IDS$AzRequestHelper;->failure(IILjava/lang/String;I)V
:try_end_28c
.catchall {:try_start_26c .. :try_end_28c} :catchall_262
.catch Ljava/io/IOException; {:try_start_26c .. :try_end_28c} :catch_21d
if-eqz v0, :cond_34
invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
goto/16 :goto_34
:try_start_293
:cond_293
invoke-interface {p2, v4, v5}, Lcom/blackberry/ids/IDS$AzRequestHelper;->success(Ljava/lang/String;Ljava/util/Map;)V
:try_end_296
.catchall {:try_start_293 .. :try_end_296} :catchall_262
.catch Ljava/io/IOException; {:try_start_293 .. :try_end_296} :catch_21d
if-eqz v0, :cond_34
invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
goto/16 :goto_34
:cond_29d
const/16 v1, 0x12e
if-ne v2, v1, :cond_2da
:try_start_2a1
const-string v1, "Location"
invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "HTTP-status "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " : "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " redirected to "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v2
const/4 v3, -0x1
const/4 v4, -0x1
invoke-interface {p2, v2, v3, v1, v4}, Lcom/blackberry/ids/IDS$AzRequestHelper;->failure(IILjava/lang/String;I)V
:try_end_2d3
.catchall {:try_start_2a1 .. :try_end_2d3} :catchall_262
.catch Ljava/io/IOException; {:try_start_2a1 .. :try_end_2d3} :catch_21d
if-eqz v0, :cond_34
invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
goto/16 :goto_34
:cond_2da
const/16 v1, 0x198
if-eq v2, v1, :cond_2e6
const/16 v1, 0x1f3
if-le v2, v1, :cond_2ef
const/16 v1, 0x258
if-ge v2, v1, :cond_2ef
:try_start_2e6
:cond_2e6
sget-object v1, Lcom/blackberry/ids/IDS;->m:Lcom/blackberry/ids/BlockedTokenList;
invoke-virtual {p1}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v3
invoke-virtual {v1, v3, v2}, Lcom/blackberry/ids/BlockedTokenList;->a(II)V
:cond_2ef
const-string v1, "error"
invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-static {v1}, Lcom/blackberry/ids/IDS;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string v1, "error_description"
invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-static {v1}, Lcom/blackberry/ids/IDS;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-nez v3, :cond_33a
invoke-virtual {p1}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v1
const v3, 0xc35c
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "HTTP-status "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v4, " : "
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v4, " failure with no error code"
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const/4 v4, -0x1
invoke-interface {p2, v1, v3, v2, v4}, Lcom/blackberry/ids/IDS$AzRequestHelper;->failure(IILjava/lang/String;I)V
:try_end_333
.catchall {:try_start_2e6 .. :try_end_333} :catchall_262
.catch Ljava/io/IOException; {:try_start_2e6 .. :try_end_333} :catch_21d
if-eqz v0, :cond_34
invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
goto/16 :goto_34
:cond_33a
:try_start_33a
invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_33d
.catchall {:try_start_33a .. :try_end_33d} :catchall_262
.catch Ljava/lang/NumberFormatException; {:try_start_33a .. :try_end_33d} :catch_389
.catch Ljava/io/IOException; {:try_start_33a .. :try_end_33d} :catch_21d
move-result v3
:try_start_33e
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "HTTP-status "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v4, " : "
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v4, ": "
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
if-eqz v1, :cond_3bf
:goto_35b
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
sparse-switch v3, :sswitch_data_3de
const-string v2, "do_az_request request_id=%s Request Failed with server error : %d"
const/4 v4, 0x2
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
aput-object p1, v4, v5
const/4 v5, 0x1
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
invoke-static {v2, v4}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {p1}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v2
const v4, 0xc35c
invoke-interface {p2, v2, v4, v1, v3}, Lcom/blackberry/ids/IDS$AzRequestHelper;->failure(IILjava/lang/String;I)V
:try_end_382
.catchall {:try_start_33e .. :try_end_382} :catchall_262
.catch Ljava/io/IOException; {:try_start_33e .. :try_end_382} :catch_21d
:goto_382
if-eqz v0, :cond_34
invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
goto/16 :goto_34
:catch_389
move-exception v1
:try_start_38a
invoke-virtual {p1}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v1
const v4, 0xc35c
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "HTTP-status "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v5, " : "
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v5, " failure with non-numeric error code: "
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const/4 v3, -0x1
invoke-interface {p2, v1, v4, v2, v3}, Lcom/blackberry/ids/IDS$AzRequestHelper;->failure(IILjava/lang/String;I)V
:try_end_3b8
.catchall {:try_start_38a .. :try_end_3b8} :catchall_262
.catch Ljava/io/IOException; {:try_start_38a .. :try_end_3b8} :catch_21d
if-eqz v0, :cond_34
invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
goto/16 :goto_34
:try_start_3bf
:cond_3bf
const-string v1, "no error description"
goto :goto_35b
:sswitch_3c2
invoke-virtual {p1}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v2
const v4, 0xc3ea
invoke-interface {p2, v2, v4, v1, v3}, Lcom/blackberry/ids/IDS$AzRequestHelper;->failure(IILjava/lang/String;I)V
goto :goto_382
:sswitch_3cd
invoke-virtual {p1}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v2
const v4, 0xc3ec
invoke-interface {p2, v2, v4, v1, v3}, Lcom/blackberry/ids/IDS$AzRequestHelper;->failure(IILjava/lang/String;I)V
:try_end_3d7
.catchall {:try_start_3bf .. :try_end_3d7} :catchall_262
.catch Ljava/io/IOException; {:try_start_3bf .. :try_end_3d7} :catch_21d
goto :goto_382
:catchall_3d8
move-exception v0
goto/16 :goto_266
:catch_3db
move-exception v0
goto/16 :goto_221
:sswitch_data_3de
.sparse-switch
0x1117c -> :sswitch_3c2
0x11189 -> :sswitch_3cd
0x1118e -> :sswitch_3c2
0x11196 -> :sswitch_3c2
0x11197 -> :sswitch_3cd
.end sparse-switch
.end method
.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Lcom/blackberry/ids/IGetTokenCallback;Lcom/blackberry/ids/IFailureCallback;Lcom/blackberry/ids/RequestId;)V
.registers 13
const/4 v7, 0x2
const/4 v6, 0x0
const/4 v5, 0x1
invoke-static {p1}, Lcom/blackberry/ids/IDS;->e(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_21
const-string v0, "do_get_token - request_id=%s - Unknown AppliesTo is Requested : %s"
new-array v1, v7, [Ljava/lang/Object;
aput-object p4, v1, v6
aput-object p1, v1, v5
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {p4}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v0
const v1, 0xc359
const-string v2, "AppliesTo requested is not supported"
invoke-interface {p3, v0, v1, v2}, Lcom/blackberry/ids/IFailureCallback;->call(IILjava/lang/String;)V
:goto_20
return-void
:cond_21
sget-object v0, Lcom/blackberry/ids/IDS;->m:Lcom/blackberry/ids/BlockedTokenList;
invoke-virtual {p4}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v1
invoke-virtual {v0, v1, v5, p1}, Lcom/blackberry/ids/BlockedTokenList;->a(IILjava/lang/String;)I
move-result v0
if-eqz v0, :cond_42
const-string v1, "do_get_token - request_id=%s - Token : %s is blacklisted"
new-array v2, v7, [Ljava/lang/Object;
aput-object p4, v2, v6
aput-object p1, v2, v5
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {p4}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v1
const-string v2, "Token blacklisted"
invoke-interface {p3, v1, v0, v2}, Lcom/blackberry/ids/IFailureCallback;->call(IILjava/lang/String;)V
goto :goto_20
:cond_42
invoke-static {p1}, Lcom/blackberry/ids/TokenTempCache;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/blackberry/ids/IDS;->k:Lcom/blackberry/ids/TokenTempCache;
monitor-enter v1
:try_start_49
sget-object v2, Lcom/blackberry/ids/IDS;->k:Lcom/blackberry/ids/TokenTempCache;
invoke-static {p1}, Lcom/blackberry/ids/TokenTempCache;->a(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_8e
const-string v2, "do_get_token - request_id=%s - a valid %s is found in cache"
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object p4, v3, v4
const/4 v4, 0x1
aput-object v0, v3, v4
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
sget-object v2, Lcom/blackberry/ids/IDS;->k:Lcom/blackberry/ids/TokenTempCache;
invoke-static {p1}, Lcom/blackberry/ids/TokenTempCache;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
sget-object v3, Lcom/blackberry/ids/IDS;->k:Lcom/blackberry/ids/TokenTempCache;
invoke-static {p1}, Lcom/blackberry/ids/TokenTempCache;->c(Ljava/lang/String;)[Lcom/blackberry/ids/TokenParam;
move-result-object v3
if-eqz v2, :cond_7b
if-eqz v3, :cond_7b
invoke-virtual {p4}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v0
invoke-interface {p2, v0, v2, v3}, Lcom/blackberry/ids/IGetTokenCallback;->call(ILjava/lang/String;[Lcom/blackberry/ids/TokenParam;)V
monitor-exit v1
:try_end_77
.catchall {:try_start_49 .. :try_end_77} :catchall_78
goto :goto_20
:catchall_78
move-exception v0
monitor-exit v1
throw v0
:cond_7b
:try_start_7b
const-string v2, "do_get_token - request_id=%s - problem during retrieval of % from cache"
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object p4, v3, v4
const/4 v4, 0x1
aput-object v0, v3, v4
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
sget-object v2, Lcom/blackberry/ids/IDS;->k:Lcom/blackberry/ids/TokenTempCache;
invoke-static {p1}, Lcom/blackberry/ids/TokenTempCache;->d(Ljava/lang/String;)V
:cond_8e
monitor-exit v1
:try_end_8f
.catchall {:try_start_7b .. :try_end_8f} :catchall_78
sget-object v1, Lcom/blackberry/ids/IDS;->m:Lcom/blackberry/ids/BlockedTokenList;
invoke-virtual {p4}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v2
invoke-virtual {v1, v2}, Lcom/blackberry/ids/BlockedTokenList;->b(I)I
move-result v1
if-eqz v1, :cond_cb
const-string v0, "do_get_token - request_id=%s - requests are blocked, http status "
new-array v2, v7, [Ljava/lang/Object;
aput-object p4, v2, v6
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v5
invoke-static {v0, v2}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {p4}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v0
const v2, 0xc35c
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "HTTP-status "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, " : Requests blocked due to server error/under maintenance"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {p3, v0, v2, v1}, Lcom/blackberry/ids/IFailureCallback;->call(IILjava/lang/String;)V
goto/16 :goto_20
:cond_cb
const-string v1, "do_get_token - request_id=%s - %s NOT found in cache, getting it from server"
new-array v2, v7, [Ljava/lang/Object;
aput-object p4, v2, v6
aput-object v0, v2, v5
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v0, Lcom/blackberry/ids/IDS$3;
move-object v1, p0
move-object v2, p1
move-object v3, p4
move-object v4, p2
move-object v5, p3
invoke-direct/range {v0 .. v5}, Lcom/blackberry/ids/IDS$3;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/blackberry/ids/RequestId;Lcom/blackberry/ids/IGetTokenCallback;Lcom/blackberry/ids/IFailureCallback;)V
const-string v1, "ids_get_token"
invoke-static {v1, p4, v0}, Lcom/blackberry/ids/IDS;->a(Ljava/lang/String;Lcom/blackberry/ids/RequestId;Lcom/blackberry/ids/IDS$AzRequestHelper;)V
goto/16 :goto_20
.end method
.method static synthetic a([Ljava/lang/String;Lcom/blackberry/ids/IGetPropertiesCallback;Lcom/blackberry/ids/IFailureCallback;Lcom/blackberry/ids/RequestId;)V
.registers 12
const/4 v7, 0x2
const/4 v6, 0x1
const/4 v0, 0x0
sget-object v1, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
monitor-enter v1
:try_start_6
sget-object v2, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
invoke-virtual {v2}, Lcom/blackberry/ids/BBIDStorage;->f()Z
move-result v2
if-eqz v2, :cond_bb
sget-object v2, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
invoke-virtual {v2, p0}, Lcom/blackberry/ids/BBIDStorage;->a([Ljava/lang/String;)[Lcom/blackberry/ids/Property;
move-result-object v2
if-eqz v2, :cond_6c
array-length v3, v2
if-lez v3, :cond_6c
const-string v3, "do_get_properties - request_id=%d - Properties[%d] Found in storage !"
const/4 v4, 0x2
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
invoke-virtual {p3}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v6
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
const/4 v5, 0x1
array-length v6, v2
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
invoke-static {v3, v4}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {p3}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v3
invoke-interface {p1, v3, v2}, Lcom/blackberry/ids/IGetPropertiesCallback;->call(I[Lcom/blackberry/ids/Property;)V
:goto_3b
array-length v3, v2
if-ge v0, v3, :cond_6a
aget-object v3, v2, v0
iget-object v3, v3, Lcom/blackberry/ids/Property;->name:Ljava/lang/String;
const-string v4, "urn:bbid:uid"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_67
aget-object v3, v2, v0
iget-object v3, v3, Lcom/blackberry/ids/Property;->value:Ljava/lang/String;
invoke-static {v3}, Lcom/blackberry/ids/CryptoUtils;->hashEcoid(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "UID from cache (hashed) : "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
const/4 v4, 0x0
new-array v4, v4, [Ljava/lang/Object;
invoke-static {v3, v4}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
:cond_67
add-int/lit8 v0, v0, 0x1
goto :goto_3b
:cond_6a
monitor-exit v1
:goto_6b
return-void
:cond_6c
const-string v2, "do_get_properties - request_id=%d - Properties not found in storage, getting from server"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-virtual {p3}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v5
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v3, v4
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
:goto_7f
monitor-exit v1
:try_end_80
.catchall {:try_start_6 .. :try_end_80} :catchall_d4
sget-object v1, Lcom/blackberry/ids/IDS;->m:Lcom/blackberry/ids/BlockedTokenList;
invoke-virtual {p3}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v2
invoke-virtual {v1, v2}, Lcom/blackberry/ids/BlockedTokenList;->b(I)I
move-result v1
if-eqz v1, :cond_d7
const-string v2, "do_get_properties - request_id=%s - requests are blocked, http status "
new-array v3, v7, [Ljava/lang/Object;
aput-object p3, v3, v0
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
aput-object v0, v3, v6
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {p3}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v0
const v2, 0xc35c
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "HTTP-status "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, " : Requests blocked due to server error/under maintenance"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {p2, v0, v2, v1}, Lcom/blackberry/ids/IFailureCallback;->call(IILjava/lang/String;)V
goto :goto_6b
:cond_bb
:try_start_bb
sget-object v2, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
invoke-virtual {v2}, Lcom/blackberry/ids/BBIDStorage;->g()V
const-string v2, "do_get_properties - request_id=%d - property TTL has expired, getting properties from server"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-virtual {p3}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v5
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v3, v4
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_d3
.catchall {:try_start_bb .. :try_end_d3} :catchall_d4
goto :goto_7f
:catchall_d4
move-exception v0
monitor-exit v1
throw v0
:cond_d7
new-instance v0, Lcom/blackberry/ids/IDS$5;
invoke-direct {v0, p0, p1, p3, p2}, Lcom/blackberry/ids/IDS$5;-><init>([Ljava/lang/String;Lcom/blackberry/ids/IGetPropertiesCallback;Lcom/blackberry/ids/RequestId;Lcom/blackberry/ids/IFailureCallback;)V
const-string v1, "ids_get_properties"
invoke-static {v1, p3, v0}, Lcom/blackberry/ids/IDS;->a(Ljava/lang/String;Lcom/blackberry/ids/RequestId;Lcom/blackberry/ids/IDS$AzRequestHelper;)V
goto :goto_6b
.end method
.method static a()Z
.registers 1
sget-boolean v0, Lcom/blackberry/ids/IDS;->c:Z
return v0
.end method
.method static synthetic a(Lcom/blackberry/ids/IChallengeCallback;Lcom/blackberry/ids/IFailureCallback;Lcom/blackberry/ids/RequestId;)Z
.registers 4
invoke-static {p0, p1, p2}, Lcom/blackberry/ids/IDS;->c(Lcom/blackberry/ids/IChallengeCallback;Lcom/blackberry/ids/IFailureCallback;Lcom/blackberry/ids/RequestId;)Z
move-result v0
return v0
.end method
.method static synthetic b(Lcom/blackberry/ids/RequestId;)I
.registers 2
invoke-static {p0}, Lcom/blackberry/ids/IDS;->d(Lcom/blackberry/ids/RequestId;)I
move-result v0
return v0
.end method
.method static b()Lcom/blackberry/ids/BBIDStorage;
.registers 1
sget-object v0, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
return-object v0
.end method
.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/blackberry/ids/IDS;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static b(Landroid/content/Context;)V
.registers 9
const/4 v1, 0x0
const/4 v3, 0x0
:try_start_2
invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
move-result-object v0
const-string v2, "certs/ca.pem"
invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v1
const-string v2, "MD5"
invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
move-result-object v2
const/16 v4, 0x2000
new-array v4, v4, [B
:goto_16
invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I
move-result v5
if-lez v5, :cond_33
const/4 v6, 0x0
invoke-virtual {v2, v4, v6, v5}, Ljava/security/MessageDigest;->update([BII)V
:try_end_20
.catchall {:try_start_2 .. :try_end_20} :catchall_123
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_20} :catch_21
.catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_20} :catch_b6
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_20} :catch_e3
.catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_20} :catch_103
goto :goto_16
:catch_21
move-exception v0
:try_start_22
const-string v2, "IDS setupCApinning - IO exception while setting up Cert pinning"
const/4 v4, 0x0
new-array v4, v4, [Ljava/lang/Object;
invoke-static {v0, v2, v4}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
:try_end_2d
.catchall {:try_start_22 .. :try_end_2d} :catchall_123
if-eqz v1, :cond_32
:try_start_2f
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
:goto_32
:cond_32
:try_end_32
.catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_d6
return-void
:cond_33
:try_start_33
invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B
move-result-object v2
new-instance v4, Ljava/math/BigInteger;
invoke-direct {v4, v2}, Ljava/math/BigInteger;-><init>([B)V
sget-object v2, Lcom/blackberry/ids/IDS;->q:Ljava/math/BigInteger;
invoke-virtual {v4, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I
move-result v2
if-nez v2, :cond_ad
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
const-string v2, "certs/ca.pem"
invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v1
const-string v0, "BKS"
invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;
move-result-object v5
const/4 v0, 0x0
invoke-virtual {v5, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
const-string v0, "X.509"
invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v6
move v2, v3
:goto_66
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_88
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/security/cert/X509Certificate;
new-instance v7, Ljava/lang/StringBuilder;
const-string v4, "cert"
invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
add-int/lit8 v4, v2, 0x1
invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v5, v2, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
move v2, v4
goto :goto_66
:cond_88
const-string v0, "X509"
invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;
move-result-object v0
sput-object v0, Lcom/blackberry/ids/IDS;->n:Ljavax/net/ssl/TrustManagerFactory;
invoke-virtual {v0, v5}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
const-string v0, "IDS setupCApinning -- trust manager is succcessfully configured"
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0, v2}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
:goto_9b
:try_end_9b
.catchall {:try_start_33 .. :try_end_9b} :catchall_123
.catch Ljava/io/IOException; {:try_start_33 .. :try_end_9b} :catch_21
.catch Ljava/security/KeyStoreException; {:try_start_33 .. :try_end_9b} :catch_b6
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_33 .. :try_end_9b} :catch_e3
.catch Ljava/security/cert/CertificateException; {:try_start_33 .. :try_end_9b} :catch_103
if-eqz v1, :cond_32
:try_start_9d
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
:try_end_a0
.catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_a1
goto :goto_32
:catch_a1
move-exception v0
const-string v1, "IDS setupCApinning - error while closing CA Pem file"
new-array v2, v3, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_32
:cond_ad
:try_start_ad
const-string v0, "IDS setupCApinning -- CA file is tampered, trust cannot be established"
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0, v2}, Lcom/blackberry/ids/Ln;->e(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_b5
.catchall {:try_start_ad .. :try_end_b5} :catchall_123
.catch Ljava/io/IOException; {:try_start_ad .. :try_end_b5} :catch_21
.catch Ljava/security/KeyStoreException; {:try_start_ad .. :try_end_b5} :catch_b6
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_ad .. :try_end_b5} :catch_e3
.catch Ljava/security/cert/CertificateException; {:try_start_ad .. :try_end_b5} :catch_103
goto :goto_9b
:catch_b6
move-exception v0
:try_start_b7
const-string v2, "IDS setupCApinning - KeyStoreException while setting up Cert pinning"
const/4 v4, 0x0
new-array v4, v4, [Ljava/lang/Object;
invoke-static {v0, v2, v4}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V
:try_end_c2
.catchall {:try_start_b7 .. :try_end_c2} :catchall_123
if-eqz v1, :cond_32
:try_start_c4
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
:try_end_c7
.catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c7} :catch_c9
goto/16 :goto_32
:catch_c9
move-exception v0
const-string v1, "IDS setupCApinning - error while closing CA Pem file"
new-array v2, v3, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_32
:catch_d6
move-exception v0
const-string v1, "IDS setupCApinning - error while closing CA Pem file"
new-array v2, v3, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_32
:catch_e3
move-exception v0
:try_start_e4
const-string v2, "IDS setupCApinning - NoSuchAlgorithmException while setting up Cert pinning"
const/4 v4, 0x0
new-array v4, v4, [Ljava/lang/Object;
invoke-static {v0, v2, v4}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
:try_end_ef
.catchall {:try_start_e4 .. :try_end_ef} :catchall_123
if-eqz v1, :cond_32
:try_start_f1
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
:try_end_f4
.catch Ljava/io/IOException; {:try_start_f1 .. :try_end_f4} :catch_f6
goto/16 :goto_32
:catch_f6
move-exception v0
const-string v1, "IDS setupCApinning - error while closing CA Pem file"
new-array v2, v3, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_32
:catch_103
move-exception v0
:try_start_104
const-string v2, "IDS setupCApinning - CertificateException while setting up Cert pinning"
const/4 v4, 0x0
new-array v4, v4, [Ljava/lang/Object;
invoke-static {v0, v2, v4}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V
:try_end_10f
.catchall {:try_start_104 .. :try_end_10f} :catchall_123
if-eqz v1, :cond_32
:try_start_111
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
:try_end_114
.catch Ljava/io/IOException; {:try_start_111 .. :try_end_114} :catch_116
goto/16 :goto_32
:catch_116
move-exception v0
const-string v1, "IDS setupCApinning - error while closing CA Pem file"
new-array v2, v3, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_32
:catchall_123
move-exception v0
if-eqz v1, :cond_129
:try_start_126
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
:cond_129
:goto_129
:try_end_129
.catch Ljava/io/IOException; {:try_start_126 .. :try_end_129} :catch_12a
throw v0
:catch_12a
move-exception v1
const-string v2, "IDS setupCApinning - error while closing CA Pem file"
new-array v3, v3, [Ljava/lang/Object;
invoke-static {v1, v2, v3}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_129
.end method
.method static synthetic b(Lcom/blackberry/ids/IChallengeCallback;Lcom/blackberry/ids/IFailureCallback;Lcom/blackberry/ids/RequestId;)V
.registers 15
const/4 v3, 0x2
const/4 v1, 0x0
const v4, 0xc35c
const/4 v10, 0x1
const/4 v9, 0x0
sget-object v0, Lcom/blackberry/ids/IDS;->m:Lcom/blackberry/ids/BlockedTokenList;
invoke-virtual {p2}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v2
invoke-virtual {v0, v2}, Lcom/blackberry/ids/BlockedTokenList;->b(I)I
move-result v0
if-eqz v0, :cond_3f
const-string v1, "do_VerifyEmail - request_id=%s - requests are blocked, http status "
new-array v2, v3, [Ljava/lang/Object;
aput-object p2, v2, v9
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v10
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {p2}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v1
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "HTTP-status "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, " : Requests blocked due to server error/under maintenance"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v1, v4, v0}, Lcom/blackberry/ids/IFailureCallback;->call(IILjava/lang/String;)V
:goto_3e
:cond_3e
return-void
:cond_3f
sget-object v0, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
invoke-virtual {v0}, Lcom/blackberry/ids/BBIDStorage;->b()Ljava/lang/String;
move-result-object v0
sget-object v2, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
invoke-virtual {v2}, Lcom/blackberry/ids/BBIDStorage;->c()Ljava/lang/String;
move-result-object v2
sget-object v3, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
invoke-virtual {v3}, Lcom/blackberry/ids/BBIDStorage;->d()Ljava/lang/String;
move-result-object v3
if-nez v3, :cond_60
invoke-virtual {p2}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v0
const v1, 0xc3ea
const-string v2, "No existing req_token"
invoke-interface {p1, v0, v1, v2}, Lcom/blackberry/ids/IFailureCallback;->call(IILjava/lang/String;)V
goto :goto_3e
:cond_60
invoke-static {}, Lcom/blackberry/ids/Entropy;->a()Ljava/lang/String;
move-result-object v3
new-instance v4, Ljava/net/URL;
sget-object v5, Lcom/blackberry/ids/IDS;->h:Landroid/net/Uri;
invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;
move-result-object v5
const-string v6, "confirmEmail"
invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v5
invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
move-result-object v5
invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
const-string v5, "url = %s"
new-array v6, v10, [Ljava/lang/Object;
aput-object v4, v6, v9
invoke-static {v5, v6}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v5, Lcom/blackberry/ids/PostBody;
invoke-direct {v5}, Lcom/blackberry/ids/PostBody;-><init>()V
const-string v6, "grant_type"
const-string v7, "id_token"
invoke-virtual {v5, v6, v7}, Lcom/blackberry/ids/PostBody;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/blackberry/ids/PostBody;
move-result-object v6
const-string v7, "refresh_token"
sget-object v8, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
invoke-virtual {v8}, Lcom/blackberry/ids/BBIDStorage;->d()Ljava/lang/String;
move-result-object v8
invoke-virtual {v6, v7, v8}, Lcom/blackberry/ids/PostBody;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/blackberry/ids/PostBody;
move-result-object v6
const-string v7, "redirect_uri"
sget-object v8, Lcom/blackberry/ids/IDS;->j:Ljava/lang/String;
invoke-virtual {v6, v7, v8}, Lcom/blackberry/ids/PostBody;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/blackberry/ids/PostBody;
invoke-virtual {v5}, Lcom/blackberry/ids/PostBody;->getString()Ljava/lang/String;
move-result-object v5
const-string v6, "body = %s"
new-array v7, v10, [Ljava/lang/Object;
aput-object v5, v7, v9
invoke-static {v6, v7}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-static {v5}, Lcom/blackberry/ids/StringUtils;->a(Ljava/lang/String;)[B
move-result-object v6
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
sget-object v8, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
iget-object v8, v8, Lcom/blackberry/ids/BBIDStorage;->b:Ljava/lang/String;
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, ":"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
sget-object v8, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
invoke-virtual {v8}, Lcom/blackberry/ids/BBIDStorage;->a()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, ":"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v0}, Lcom/blackberry/ids/CryptoUtils;->a(Ljava/lang/String;Ljava/lang/String;)[B
move-result-object v7
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, ":"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0, v7}, Lcom/blackberry/ids/CryptoUtils;->a(Ljava/lang/String;[B)Ljava/lang/String;
move-result-object v0
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v5, ":"
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
:try_start_118
invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
check-cast v0, Ljavax/net/ssl/HttpsURLConnection;
:try_end_11e
.catchall {:try_start_118 .. :try_end_11e} :catchall_3f7
.catch Ljava/io/IOException; {:try_start_118 .. :try_end_11e} :catch_3fa
:try_start_11e
sget-object v2, Lcom/blackberry/ids/IDS;->n:Ljavax/net/ssl/TrustManagerFactory;
if-eqz v2, :cond_21d
const-string v2, "TLS"
invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
move-result-object v2
const/4 v4, 0x0
sget-object v8, Lcom/blackberry/ids/IDS;->n:Ljavax/net/ssl/TrustManagerFactory;
invoke-virtual {v8}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;
move-result-object v8
const/4 v9, 0x0
invoke-virtual {v2, v4, v8, v9}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
:try_end_133
.catchall {:try_start_11e .. :try_end_133} :catchall_289
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_11e .. :try_end_133} :catch_232
.catch Ljava/security/KeyManagementException; {:try_start_11e .. :try_end_133} :catch_273
.catch Ljava/io/IOException; {:try_start_11e .. :try_end_133} :catch_248
move-object v1, v2
:goto_134
if-eqz v1, :cond_293
:try_start_136
const-string v2, "do_VerifyEmail - request_id=%d --- setting trust factory to SSL socket"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
const/4 v8, 0x0
invoke-virtual {p2}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v9
invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
aput-object v9, v4, v8
invoke-static {v2, v4}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
move-result-object v1
invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
const-string v1, "Connection"
const-string v2, "close"
invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "Content-Type"
const-string v2, "application/x-www-form-urlencoded; charset=UTF-8"
invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "Authorization"
invoke-virtual {v0, v1, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "User-Agent"
sget-object v2, Lcom/blackberry/ids/IDS;->i:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "Content-Type: %s"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v4, 0x0
const-string v5, "Content-Type"
invoke-virtual {v0, v5}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
aput-object v5, v2, v4
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v1, "Authorization: %s"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v4, 0x0
const-string v5, "Authorization"
invoke-virtual {v0, v5}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
aput-object v5, v2, v4
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V
const-string v1, "POST"
invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V
array-length v1, v6
invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setFixedLengthStreamingMode(I)V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V
sget v1, Lcom/blackberry/ids/IDS;->l:I
invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V
sget v1, Lcom/blackberry/ids/IDS;->l:I
invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V
invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;
move-result-object v1
invoke-virtual {v1, v6}, Ljava/io/OutputStream;->write([B)V
invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I
move-result v2
invoke-static {v0}, Lcom/blackberry/ids/IDS;->a(Ljavax/net/ssl/HttpsURLConnection;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/blackberry/ids/IDS;->c(Ljava/lang/String;)Ljava/util/Map;
move-result-object v4
const-string v5, "status: %d"
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/Object;
const/4 v8, 0x0
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
aput-object v9, v6, v8
invoke-static {v5, v6}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v5, "response body: %s"
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/Object;
const/4 v8, 0x0
aput-object v1, v6, v8
invoke-static {v5, v6}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
const/16 v5, 0xc8
if-eq v2, v5, :cond_1e3
const/16 v5, 0xcc
if-ne v2, v5, :cond_2dd
:cond_1e3
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ":"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1, v7}, Lcom/blackberry/ids/CryptoUtils;->a(Ljava/lang/String;[B)Ljava/lang/String;
move-result-object v1
const-string v3, "x-authzservice-sig"
invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_2b9
invoke-virtual {p2}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v1
const v2, 0xc35c
const-string v3, "x-authzservice-sig doesn\'t verify"
invoke-interface {p1, v1, v2, v3}, Lcom/blackberry/ids/IFailureCallback;->call(IILjava/lang/String;)V
:try_end_216
.catchall {:try_start_136 .. :try_end_216} :catchall_289
.catch Ljava/io/IOException; {:try_start_136 .. :try_end_216} :catch_248
if-eqz v0, :cond_3e
invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
goto/16 :goto_3e
:try_start_21d
:cond_21d
const-string v2, "do_VerifyEmail - request_id=%d - SSLContext Init -- No Trust factory found!"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
const/4 v8, 0x0
invoke-virtual {p2}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v9
invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
aput-object v9, v4, v8
invoke-static {v2, v4}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_230
.catchall {:try_start_21d .. :try_end_230} :catchall_289
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_21d .. :try_end_230} :catch_232
.catch Ljava/security/KeyManagementException; {:try_start_21d .. :try_end_230} :catch_273
.catch Ljava/io/IOException; {:try_start_21d .. :try_end_230} :catch_248
goto/16 :goto_134
:catch_232
move-exception v2
:try_start_233
const-string v2, "do_VerifyEmail - request_id=%d - SSLContext Init -- NoSuchAlgorithm Exception !"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
const/4 v8, 0x0
invoke-virtual {p2}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v9
invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
aput-object v9, v4, v8
invoke-static {v2, v4}, Lcom/blackberry/ids/Ln;->e(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_246
.catchall {:try_start_233 .. :try_end_246} :catchall_289
.catch Ljava/io/IOException; {:try_start_233 .. :try_end_246} :catch_248
goto/16 :goto_134
:catch_248
move-exception v1
move-object v11, v1
move-object v1, v0
move-object v0, v11
:goto_24c
:try_start_24c
const-string v2, "IOException in do_VerifyEmail request_id=%s, %s"
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object p2, v3, v4
const/4 v4, 0x1
invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;
move-result-object v5
aput-object v5, v3, v4
invoke-static {v0, v2, v3}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {p2}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v2
const v3, 0xc35c
invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v2, v3, v0}, Lcom/blackberry/ids/IFailureCallback;->call(IILjava/lang/String;)V
:try_end_26c
.catchall {:try_start_24c .. :try_end_26c} :catchall_3f7
if-eqz v1, :cond_3e
invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
goto/16 :goto_3e
:catch_273
move-exception v2
:try_start_274
const-string v2, "do_VerifyEmail - request_id=%d - SSLContext Init -- KeyManagement Exception !"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
const/4 v8, 0x0
invoke-virtual {p2}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v9
invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
aput-object v9, v4, v8
invoke-static {v2, v4}, Lcom/blackberry/ids/Ln;->e(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_287
.catchall {:try_start_274 .. :try_end_287} :catchall_289
.catch Ljava/io/IOException; {:try_start_274 .. :try_end_287} :catch_248
goto/16 :goto_134
:catchall_289
move-exception v1
move-object v11, v1
move-object v1, v0
move-object v0, v11
:goto_28d
if-eqz v1, :cond_292
invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
:cond_292
throw v0
:cond_293
:try_start_293
const-string v1, "do_VerifyEmail - request_id=%d - SSLContext Init -- Failed, CA pinning cannot be completed"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-virtual {p2}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v4
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {p2}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v1
const v2, 0xc35c
const-string v3, "CA trust cannot be established"
invoke-interface {p1, v1, v2, v3}, Lcom/blackberry/ids/IFailureCallback;->call(IILjava/lang/String;)V
:try_end_2b2
.catchall {:try_start_293 .. :try_end_2b2} :catchall_289
.catch Ljava/io/IOException; {:try_start_293 .. :try_end_2b2} :catch_248
if-eqz v0, :cond_3e
invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
goto/16 :goto_3e
:cond_2b9
const/16 v1, 0xc8
if-ne v2, v1, :cond_2d4
:try_start_2bd
const-string v1, "Got 200 response for email confirmation ... Validation email has been sent"
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
:goto_2c5
invoke-virtual {p2}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v1
const/4 v2, 0x1
invoke-interface {p0, v1, v2}, Lcom/blackberry/ids/IChallengeCallback;->call(II)V
:try_end_2cd
.catchall {:try_start_2bd .. :try_end_2cd} :catchall_289
.catch Ljava/io/IOException; {:try_start_2bd .. :try_end_2cd} :catch_248
if-eqz v0, :cond_3e
invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
goto/16 :goto_3e
:cond_2d4
:try_start_2d4
const-string v1, "Got 204 response for email confirmation ... email was already confirmed"
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_2c5
:cond_2dd
const/16 v1, 0x12e
if-ne v2, v1, :cond_30f
const-string v1, "Location"
invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "HTTP-status "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " : ids_verify_email redirected to "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v2
const/4 v3, -0x1
invoke-interface {p1, v2, v3, v1}, Lcom/blackberry/ids/IFailureCallback;->call(IILjava/lang/String;)V
:try_end_308
.catchall {:try_start_2d4 .. :try_end_308} :catchall_289
.catch Ljava/io/IOException; {:try_start_2d4 .. :try_end_308} :catch_248
if-eqz v0, :cond_3e
invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
goto/16 :goto_3e
:cond_30f
const/16 v1, 0x198
if-eq v2, v1, :cond_31b
const/16 v1, 0x1f3
if-le v2, v1, :cond_324
const/16 v1, 0x258
if-ge v2, v1, :cond_324
:try_start_31b
:cond_31b
sget-object v1, Lcom/blackberry/ids/IDS;->m:Lcom/blackberry/ids/BlockedTokenList;
invoke-virtual {p2}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v3
invoke-virtual {v1, v3, v2}, Lcom/blackberry/ids/BlockedTokenList;->a(II)V
:cond_324
const-string v1, "error"
invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-static {v1}, Lcom/blackberry/ids/IDS;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string v1, "error_description"
invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-static {v1}, Lcom/blackberry/ids/IDS;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-nez v3, :cond_364
invoke-virtual {p2}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v1
const v3, 0xc35c
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "HTTP-status "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v4, " : ids_verify_email failure with no error code"
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {p1, v1, v3, v2}, Lcom/blackberry/ids/IFailureCallback;->call(IILjava/lang/String;)V
:try_end_35d
.catchall {:try_start_31b .. :try_end_35d} :catchall_289
.catch Ljava/io/IOException; {:try_start_31b .. :try_end_35d} :catch_248
if-eqz v0, :cond_3e
invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
goto/16 :goto_3e
:try_start_364
:cond_364
invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_367
.catchall {:try_start_364 .. :try_end_367} :catchall_289
.catch Ljava/lang/NumberFormatException; {:try_start_364 .. :try_end_367} :catch_3b3
.catch Ljava/io/IOException; {:try_start_364 .. :try_end_367} :catch_248
move-result v3
:try_start_368
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "HTTP-status "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v4, " : "
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v4, ": "
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
if-eqz v1, :cond_3de
:goto_385
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
sparse-switch v3, :sswitch_data_3fe
const-string v2, "do_VerifyEmail request_id=%s Request Failed with server error : %d"
const/4 v4, 0x2
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
aput-object p2, v4, v5
const/4 v5, 0x1
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v4, v5
invoke-static {v2, v4}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {p2}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v2
const v3, 0xc35c
invoke-interface {p1, v2, v3, v1}, Lcom/blackberry/ids/IFailureCallback;->call(IILjava/lang/String;)V
:goto_3ac
:try_end_3ac
.catchall {:try_start_368 .. :try_end_3ac} :catchall_289
.catch Ljava/io/IOException; {:try_start_368 .. :try_end_3ac} :catch_248
if-eqz v0, :cond_3e
invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
goto/16 :goto_3e
:catch_3b3
move-exception v1
:try_start_3b4
invoke-virtual {p2}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v1
const v4, 0xc35c
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "HTTP-status "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v5, " : ids_verify_email failure with non-numeric error code: "
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {p1, v1, v4, v2}, Lcom/blackberry/ids/IFailureCallback;->call(IILjava/lang/String;)V
:try_end_3d7
.catchall {:try_start_3b4 .. :try_end_3d7} :catchall_289
.catch Ljava/io/IOException; {:try_start_3b4 .. :try_end_3d7} :catch_248
if-eqz v0, :cond_3e
invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
goto/16 :goto_3e
:try_start_3de
:cond_3de
const-string v1, "no error description"
goto :goto_385
:sswitch_3e1
invoke-virtual {p2}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v2
const v3, 0xc3ea
invoke-interface {p1, v2, v3, v1}, Lcom/blackberry/ids/IFailureCallback;->call(IILjava/lang/String;)V
goto :goto_3ac
:sswitch_3ec
invoke-virtual {p2}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v2
const v3, 0xc3ec
invoke-interface {p1, v2, v3, v1}, Lcom/blackberry/ids/IFailureCallback;->call(IILjava/lang/String;)V
:try_end_3f6
.catchall {:try_start_3de .. :try_end_3f6} :catchall_289
.catch Ljava/io/IOException; {:try_start_3de .. :try_end_3f6} :catch_248
goto :goto_3ac
:catchall_3f7
move-exception v0
goto/16 :goto_28d
:catch_3fa
move-exception v0
goto/16 :goto_24c
nop
:sswitch_data_3fe
.sparse-switch
0x1117c -> :sswitch_3e1
0x11189 -> :sswitch_3ec
0x1118e -> :sswitch_3e1
0x11196 -> :sswitch_3e1
0x11197 -> :sswitch_3ec
.end sparse-switch
.end method
.method static synthetic c(Lcom/blackberry/ids/RequestId;)I
.registers 2
invoke-static {p0}, Lcom/blackberry/ids/IDS;->e(Lcom/blackberry/ids/RequestId;)I
move-result v0
return v0
.end method
.method static c()Lcom/blackberry/ids/BlockedTokenList;
.registers 1
sget-object v0, Lcom/blackberry/ids/IDS;->m:Lcom/blackberry/ids/BlockedTokenList;
return-object v0
.end method
.method private static c(Landroid/content/Context;)Ljava/lang/String;
.registers 5
const/4 v3, 0x0
:try_start_1
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
:try_end_d
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_19
move-result-object v0
iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
if-eqz v0, :cond_24
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-nez v1, :cond_24
:goto_18
return-object v0
:catch_19
move-exception v0
const-string v1, "Exception while getting PackageInfo - could not get package version"
new-array v2, v3, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/blackberry/ids/Ln;->e(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v0, ""
goto :goto_18
:cond_24
const-string v0, ""
goto :goto_18
.end method
.method private static c(Ljava/lang/String;)Ljava/util/Map;
.registers 10
const/4 v8, 0x2
const/4 v2, 0x0
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
const-string v0, "&"
invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v4
array-length v5, v4
move v1, v2
:goto_f
if-ge v1, v5, :cond_2a
aget-object v0, v4, v1
const-string v6, "="
invoke-virtual {v0, v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;
move-result-object v0
aget-object v6, v0, v2
array-length v7, v0
if-ne v7, v8, :cond_28
const/4 v7, 0x1
aget-object v0, v0, v7
:goto_21
invoke-interface {v3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_f
:cond_28
const/4 v0, 0x0
goto :goto_21
:cond_2a
return-object v3
.end method
.method private static c(Lcom/blackberry/ids/IChallengeCallback;Lcom/blackberry/ids/IFailureCallback;Lcom/blackberry/ids/RequestId;)Z
.registers 8
const/4 v4, 0x1
const/4 v1, 0x0
new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;
invoke-direct {v0, v4}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V
new-instance v2, Lcom/blackberry/ids/IDS$15;
invoke-direct {v2, p2, p0, v0, p1}, Lcom/blackberry/ids/IDS$15;-><init>(Lcom/blackberry/ids/RequestId;Lcom/blackberry/ids/IChallengeCallback;Ljava/util/concurrent/ArrayBlockingQueue;Lcom/blackberry/ids/IFailureCallback;)V
invoke-static {v2}, Lcom/blackberry/ids/IDS$UiThreadRunner;->a(Ljava/lang/Runnable;)V
const-string v2, "IDS.do_challenge request_id=%s waiting"
new-array v3, v4, [Ljava/lang/Object;
aput-object p2, v3, v1
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_start_18
invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
:try_end_21
.catchall {:try_start_18 .. :try_end_21} :catchall_43
.catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_21} :catch_2c
move-result v0
const-string v2, "IDS.do_challenge request_id=%s done"
new-array v3, v4, [Ljava/lang/Object;
aput-object p2, v3, v1
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
:goto_2b
return v0
:catch_2c
move-exception v0
:try_start_2d
const-string v0, "IDS.do_challenge request_id=%s was interrupted"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object p2, v2, v3
invoke-static {v0, v2}, Lcom/blackberry/ids/Ln;->e(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_38
.catchall {:try_start_2d .. :try_end_38} :catchall_43
const-string v0, "IDS.do_challenge request_id=%s done"
new-array v2, v4, [Ljava/lang/Object;
aput-object p2, v2, v1
invoke-static {v0, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
move v0, v1
goto :goto_2b
:catchall_43
move-exception v0
const-string v2, "IDS.do_challenge request_id=%s done"
new-array v3, v4, [Ljava/lang/Object;
aput-object p2, v3, v1
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
throw v0
.end method
.method private static d(Lcom/blackberry/ids/RequestId;)I
.registers 9
const/4 v1, -0x1
const/4 v7, 0x1
const/4 v6, 0x0
const-string v0, "enter pingServer request_id=%s"
new-array v2, v7, [Ljava/lang/Object;
aput-object p0, v2, v6
invoke-static {v0, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_start_c
new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;
const/4 v2, 0x1
invoke-direct {v0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V
new-instance v2, Ljava/lang/Thread;
new-instance v3, Lcom/blackberry/ids/IDS$13;
invoke-direct {v3, p0, v0}, Lcom/blackberry/ids/IDS$13;-><init>(Lcom/blackberry/ids/RequestId;Ljava/util/concurrent/ArrayBlockingQueue;)V
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "pingServer-"
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
const/4 v3, 0x1
invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V
invoke-virtual {v2}, Ljava/lang/Thread;->start()V
:try_end_32
.catchall {:try_start_c .. :try_end_32} :catchall_6f
:try_start_32
sget v2, Lcom/blackberry/ids/IDS;->l:I
add-int/lit16 v2, v2, 0x7d0
int-to-long v2, v2
sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/ArrayBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
if-nez v0, :cond_49
const-string v2, "Blocking queue timeout occurred"
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/Object;
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
:cond_49
if-eqz v0, :cond_59
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
:try_end_4e
.catchall {:try_start_32 .. :try_end_4e} :catchall_6f
.catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_4e} :catch_5b
move-result v0
:goto_4f
const-string v1, "exit pingServer request_id=%s"
new-array v2, v7, [Ljava/lang/Object;
aput-object p0, v2, v6
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
:goto_58
return v0
:cond_59
move v0, v1
goto :goto_4f
:catch_5b
move-exception v0
:try_start_5c
const-string v0, "Got an intrruption during pingServer queue poll...failing pingserver"
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0, v2}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_64
.catchall {:try_start_5c .. :try_end_64} :catchall_6f
const-string v0, "exit pingServer request_id=%s"
new-array v2, v7, [Ljava/lang/Object;
aput-object p0, v2, v6
invoke-static {v0, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
move v0, v1
goto :goto_58
:catchall_6f
move-exception v0
const-string v1, "exit pingServer request_id=%s"
new-array v2, v7, [Ljava/lang/Object;
aput-object p0, v2, v6
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
throw v0
.end method
.method static final d()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/blackberry/ids/IDS;->j:Ljava/lang/String;
return-object v0
.end method
.method private static d(Ljava/lang/String;)Ljava/lang/String;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:try_start_4
:cond_4
const-string v0, "UTF-8"
invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
:try_end_9
.catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_9} :catch_b
move-result-object v0
goto :goto_3
:catch_b
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public static doPing(Lcom/blackberry/ids/RequestId;)I
.registers 2
invoke-static {p0}, Lcom/blackberry/ids/IDS;->d(Lcom/blackberry/ids/RequestId;)I
move-result v0
return v0
.end method
.method private static e(Lcom/blackberry/ids/RequestId;)I
.registers 12
const/4 v2, -0x1
const/4 v3, -0x2
const/4 v4, 0x0
const/4 v9, 0x1
const/4 v1, 0x0
const-string v0, "enter doPingServer request_id=%s"
new-array v5, v9, [Ljava/lang/Object;
aput-object p0, v5, v1
invoke-static {v0, v5}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_start_e
new-instance v0, Ljava/net/URL;
sget-object v5, Lcom/blackberry/ids/IDS;->h:Landroid/net/Uri;
invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;
move-result-object v5
const-string v6, "version"
invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v5
invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
move-result-object v5
invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
const-string v5, "url = %s"
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/Object;
const/4 v7, 0x0
aput-object v0, v6, v7
invoke-static {v5, v6}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_start_32
:try_end_32
.catchall {:try_start_e .. :try_end_32} :catchall_1a2
invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
check-cast v0, Ljavax/net/ssl/HttpsURLConnection;
:try_start_38
:try_end_38
.catchall {:try_start_32 .. :try_end_38} :catchall_19b
.catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_32 .. :try_end_38} :catch_1b7
.catch Ljava/io/IOException; {:try_start_32 .. :try_end_38} :catch_1b4
sget-object v5, Lcom/blackberry/ids/IDS;->n:Ljavax/net/ssl/TrustManagerFactory;
if-eqz v5, :cond_b2
const-string v5, "TLS"
invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
move-result-object v5
const/4 v6, 0x0
sget-object v7, Lcom/blackberry/ids/IDS;->n:Ljavax/net/ssl/TrustManagerFactory;
invoke-virtual {v7}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;
move-result-object v7
const/4 v8, 0x0
invoke-virtual {v5, v6, v7, v8}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
:try_end_4d
.catchall {:try_start_38 .. :try_end_4d} :catchall_1ad
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_38 .. :try_end_4d} :catch_c6
.catch Ljava/security/KeyManagementException; {:try_start_38 .. :try_end_4d} :catch_106
.catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_38 .. :try_end_4d} :catch_dc
.catch Ljava/io/IOException; {:try_start_38 .. :try_end_4d} :catch_11c
move-object v4, v5
:goto_4e
if-eqz v4, :cond_142
:try_start_50
const-string v5, "doPingServer - request_id=%d --- setting trust factory to SSL socket"
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/Object;
const/4 v7, 0x0
invoke-virtual {p0}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v8
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8
aput-object v8, v6, v7
invoke-static {v5, v6}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
move-result-object v4
invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
const-string v4, "Connection"
const-string v5, "close"
invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const-string v4, "User-Agent"
sget-object v5, Lcom/blackberry/ids/IDS;->i:Ljava/lang/String;
invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const-string v4, "GET"
invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V
const/4 v4, 0x1
invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V
sget v4, Lcom/blackberry/ids/IDS;->l:I
invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V
sget v4, Lcom/blackberry/ids/IDS;->l:I
invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V
invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I
move-result v4
const-string v5, "status: %d"
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/Object;
const/4 v7, 0x0
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8
aput-object v8, v6, v7
invoke-static {v5, v6}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_9e
.catchall {:try_start_50 .. :try_end_9e} :catchall_1ad
.catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_50 .. :try_end_9e} :catch_dc
.catch Ljava/io/IOException; {:try_start_50 .. :try_end_9e} :catch_11c
const/16 v5, 0xc8
if-ne v4, v5, :cond_166
if-eqz v0, :cond_a7
:try_start_a4
invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
:cond_a7
:try_end_a7
.catchall {:try_start_a4 .. :try_end_a7} :catchall_1a2
const-string v0, "exit doPingServer request_id=%s"
new-array v2, v9, [Ljava/lang/Object;
aput-object p0, v2, v1
invoke-static {v0, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
move v0, v1
:goto_b1
return v0
:cond_b2
:try_start_b2
const-string v5, "doPingServer - request_id=%d - SSLContext Init -- No Trust factory found!"
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/Object;
const/4 v7, 0x0
invoke-virtual {p0}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v8
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8
aput-object v8, v6, v7
invoke-static {v5, v6}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_c5
.catchall {:try_start_b2 .. :try_end_c5} :catchall_1ad
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_b2 .. :try_end_c5} :catch_c6
.catch Ljava/security/KeyManagementException; {:try_start_b2 .. :try_end_c5} :catch_106
.catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_b2 .. :try_end_c5} :catch_dc
.catch Ljava/io/IOException; {:try_start_b2 .. :try_end_c5} :catch_11c
goto :goto_4e
:catch_c6
move-exception v5
:try_start_c7
const-string v5, "doPingServer - request_id=%d - SSLContext Init -- NoSuchAlgorithm Exception !"
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/Object;
const/4 v7, 0x0
invoke-virtual {p0}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v8
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8
aput-object v8, v6, v7
invoke-static {v5, v6}, Lcom/blackberry/ids/Ln;->e(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_da
.catchall {:try_start_c7 .. :try_end_da} :catchall_1ad
.catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_c7 .. :try_end_da} :catch_dc
.catch Ljava/io/IOException; {:try_start_c7 .. :try_end_da} :catch_11c
goto/16 :goto_4e
:catch_dc
move-exception v2
move-object v10, v2
move-object v2, v0
move-object v0, v10
:goto_e0
:try_start_e0
const-string v4, "SSLHandshakeException in doPingServer request_id=%s - Cause : %s"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
aput-object p0, v5, v6
const/4 v6, 0x1
invoke-virtual {v0}, Ljavax/net/ssl/SSLHandshakeException;->getCause()Ljava/lang/Throwable;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;
move-result-object v7
aput-object v7, v5, v6
invoke-static {v0, v4, v5}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_f6
.catchall {:try_start_e0 .. :try_end_f6} :catchall_1b1
if-eqz v2, :cond_fb
:try_start_f8
invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
:cond_fb
:try_end_fb
.catchall {:try_start_f8 .. :try_end_fb} :catchall_1a2
const-string v0, "exit doPingServer request_id=%s"
new-array v2, v9, [Ljava/lang/Object;
aput-object p0, v2, v1
invoke-static {v0, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
move v0, v3
goto :goto_b1
:catch_106
move-exception v5
:try_start_107
const-string v5, "doPingServer - request_id=%d - SSLContext Init -- KeyManagement Exception !"
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/Object;
const/4 v7, 0x0
invoke-virtual {p0}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v8
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8
aput-object v8, v6, v7
invoke-static {v5, v6}, Lcom/blackberry/ids/Ln;->e(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_11a
.catchall {:try_start_107 .. :try_end_11a} :catchall_1ad
.catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_107 .. :try_end_11a} :catch_dc
.catch Ljava/io/IOException; {:try_start_107 .. :try_end_11a} :catch_11c
goto/16 :goto_4e
:catch_11c
move-exception v3
move-object v4, v0
move-object v0, v3
:goto_11f
:try_start_11f
const-string v3, "IOException in doPingServer request_id=%s, %s"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
aput-object p0, v5, v6
const/4 v6, 0x1
invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;
move-result-object v7
aput-object v7, v5, v6
invoke-static {v0, v3, v5}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_131
.catchall {:try_start_11f .. :try_end_131} :catchall_19b
if-eqz v4, :cond_136
:try_start_133
invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
:cond_136
:try_end_136
.catchall {:try_start_133 .. :try_end_136} :catchall_1a2
const-string v0, "exit doPingServer request_id=%s"
new-array v3, v9, [Ljava/lang/Object;
aput-object p0, v3, v1
invoke-static {v0, v3}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
move v0, v2
goto/16 :goto_b1
:cond_142
:try_start_142
const-string v4, "doPingServer - request_id=%d - SSLContext Init -- Failed, Failing Ping as CA pinning cannot be completed"
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
invoke-virtual {p0}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v7
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v5, v6
invoke-static {v4, v5}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_155
.catchall {:try_start_142 .. :try_end_155} :catchall_1ad
.catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_142 .. :try_end_155} :catch_dc
.catch Ljava/io/IOException; {:try_start_142 .. :try_end_155} :catch_11c
if-eqz v0, :cond_15a
:try_start_157
invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
:try_end_15a
.catchall {:try_start_157 .. :try_end_15a} :catchall_1a2
:cond_15a
const-string v0, "exit doPingServer request_id=%s"
new-array v2, v9, [Ljava/lang/Object;
aput-object p0, v2, v1
invoke-static {v0, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
move v0, v3
goto/16 :goto_b1
:cond_166
const/16 v5, 0x198
if-eq v4, v5, :cond_172
const/16 v5, 0x1f3
if-le v4, v5, :cond_17b
const/16 v5, 0x258
if-ge v4, v5, :cond_17b
:try_start_172
:cond_172
sget-object v5, Lcom/blackberry/ids/IDS;->m:Lcom/blackberry/ids/BlockedTokenList;
invoke-virtual {p0}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v6
invoke-virtual {v5, v6, v4}, Lcom/blackberry/ids/BlockedTokenList;->a(II)V
:cond_17b
const-string v5, "non-200 status from doPingServer: %d"
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/Object;
const/4 v7, 0x0
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v6, v7
invoke-static {v5, v6}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_18a
.catchall {:try_start_172 .. :try_end_18a} :catchall_1ad
.catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_172 .. :try_end_18a} :catch_dc
.catch Ljava/io/IOException; {:try_start_172 .. :try_end_18a} :catch_11c
if-eqz v0, :cond_18f
:try_start_18c
invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
:cond_18f
:try_end_18f
.catchall {:try_start_18c .. :try_end_18f} :catchall_1a2
const-string v0, "exit doPingServer request_id=%s"
new-array v3, v9, [Ljava/lang/Object;
aput-object p0, v3, v1
invoke-static {v0, v3}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
move v0, v2
goto/16 :goto_b1
:catchall_19b
move-exception v0
:goto_19c
if-eqz v4, :cond_1a1
:try_start_19e
invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
:cond_1a1
throw v0
:catchall_1a2
:try_end_1a2
.catchall {:try_start_19e .. :try_end_1a2} :catchall_1a2
move-exception v0
const-string v2, "exit doPingServer request_id=%s"
new-array v3, v9, [Ljava/lang/Object;
aput-object p0, v3, v1
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
throw v0
:catchall_1ad
move-exception v2
move-object v4, v0
move-object v0, v2
goto :goto_19c
:catchall_1b1
move-exception v0
move-object v4, v2
goto :goto_19c
:catch_1b4
move-exception v0
goto/16 :goto_11f
:catch_1b7
move-exception v0
move-object v2, v4
goto/16 :goto_e0
.end method
.method static final e()Landroid/net/Uri;
.registers 1
sget-object v0, Lcom/blackberry/ids/IDS;->h:Landroid/net/Uri;
return-object v0
.end method
.method private static e(Ljava/lang/String;)Z
.registers 2
const-string v0, "urn:bbid:v1:sipalaska"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_38
const-string v0, "urn:bbid:v1:bbmalaska"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_38
const-string v0, "urn:bbid:v1:bbmchannels-alaska"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_38
const-string v0, "urn:bbid:v1:dreams-ad-alaska"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_38
const-string v0, "urn:bbid:v1:dreams-tag-alaska"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_38
const-string v0, "urn:bbid:v1:icrs-xplatform"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_38
const-string v0, "urn:bbid:v1:gist-xplatform"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3a
:cond_38
const/4 v0, 0x1
:goto_39
return v0
:cond_3a
const/4 v0, 0x0
goto :goto_39
.end method
.method static final f()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/blackberry/ids/IDS;->i:Ljava/lang/String;
return-object v0
.end method
.method static final g()Ljava/util/concurrent/ExecutorService;
.registers 1
sget-object v0, Lcom/blackberry/ids/IDS;->b:Ljava/util/concurrent/ExecutorService;
return-object v0
.end method
.method public static getCurrentAuthState()Lcom/blackberry/ids/UserAuthState$AuthState;
.registers 1
invoke-static {}, Lcom/blackberry/ids/UserAuthState;->a()Lcom/blackberry/ids/UserAuthState$AuthState;
move-result-object v0
return-object v0
.end method
.method private static native getDevClientString()Ljava/lang/String;
.end method
.method private static native getProdClientString()Ljava/lang/String;
.end method
.method private static native getVersion()I
.end method
.method private static native getVersionString()Ljava/lang/String;
.end method
.method static synthetic h()Lcom/blackberry/ids/TokenTempCache;
.registers 1
sget-object v0, Lcom/blackberry/ids/IDS;->k:Lcom/blackberry/ids/TokenTempCache;
return-object v0
.end method
.method public static hashEcoId(Ljava/lang/String;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/blackberry/ids/CryptoUtils;->hashEcoid(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic i()Landroid/content/Context;
.registers 1
sget-object v0, Lcom/blackberry/ids/IDS;->d:Landroid/content/Context;
return-object v0
.end method
.method public static ids_cancel_challenge()I
.registers 2
const-string v0, "enter IDS.ids_cancel_challenge"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-static {}, Lcom/blackberry/ids/IDS;->q()I
move-result v0
return v0
.end method
.method public static ids_challenge(Ljava/lang/Object;ILcom/blackberry/ids/IChallengeCallback;Lcom/blackberry/ids/IFailureCallback;Lcom/blackberry/ids/RequestId;)I
.registers 9
const-string v0, "enter IDS.ids_challenge request_id=%s challenge_type=%s"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p4, v1, v2
const/4 v2, 0x1
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-static {p0, p1, p2, p3, p4}, Lcom/blackberry/ids/IDS;->a(Ljava/lang/Object;ILcom/blackberry/ids/IChallengeCallback;Lcom/blackberry/ids/IFailureCallback;Lcom/blackberry/ids/RequestId;)I
move-result v0
return v0
.end method
.method public static ids_clear_identity()I
.registers 2
const-string v0, "enter IDS.ids_clear_identity"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-static {}, Lcom/blackberry/ids/IDS;->r()I
move-result v0
return v0
.end method
.method public static ids_clear_token(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/blackberry/ids/IClearTokenCallback;Lcom/blackberry/ids/IFailureCallback;Lcom/blackberry/ids/RequestId;)I
.registers 9
const-string v0, "enter IDS.ids_clear_token request_id=%s type=%s appliesTo=%s"
const/4 v1, 0x3
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p5, v1, v2
const/4 v2, 0x1
aput-object p1, v1, v2
const/4 v2, 0x2
aput-object p2, v1, v2
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-static/range {p0 .. p5}, Lcom/blackberry/ids/IDS;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/blackberry/ids/IClearTokenCallback;Lcom/blackberry/ids/IFailureCallback;Lcom/blackberry/ids/RequestId;)I
move-result v0
return v0
.end method
.method public static ids_get_bbmdn()Ljava/lang/String;
.registers 5
const/4 v1, 0x0
sget-object v2, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
monitor-enter v2
:try_start_4
sget-object v0, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
iget-object v0, v0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
const-string v3, "bbmdn"
const/4 v4, 0x0
invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v3, "getBBMDiplayName -- reading BBM Display name from storage!"
const/4 v4, 0x0
new-array v4, v4, [Ljava/lang/Object;
invoke-static {v3, v4}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
if-eqz v0, :cond_3f
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v3
if-nez v3, :cond_3f
:goto_1f
new-instance v0, Ljava/lang/StringBuilder;
const-string v3, "BBM Display name: "
invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_39
move-object v0, v1
:goto_31
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/Object;
invoke-static {v0, v3}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
monitor-exit v2
return-object v1
:cond_39
const-string v0, "null"
:try_end_3b
.catchall {:try_start_4 .. :try_end_3b} :catchall_3c
goto :goto_31
:catchall_3c
move-exception v0
monitor-exit v2
throw v0
:cond_3f
move-object v1, v0
goto :goto_1f
.end method
.method public static ids_get_current_auth_state()I
.registers 1
invoke-static {}, Lcom/blackberry/ids/IDS;->getCurrentAuthState()Lcom/blackberry/ids/UserAuthState$AuthState;
move-result-object v0
invoke-virtual {v0}, Lcom/blackberry/ids/UserAuthState$AuthState;->ordinal()I
move-result v0
return v0
.end method
.method public static ids_get_properties(Ljava/lang/Object;I[Ljava/lang/String;Lcom/blackberry/ids/IGetPropertiesCallback;Lcom/blackberry/ids/IFailureCallback;Lcom/blackberry/ids/RequestId;)I
.registers 7
invoke-static/range {p0 .. p5}, Lcom/blackberry/ids/IDS;->a(Ljava/lang/Object;I[Ljava/lang/String;Lcom/blackberry/ids/IGetPropertiesCallback;Lcom/blackberry/ids/IFailureCallback;Lcom/blackberry/ids/RequestId;)I
move-result v0
return v0
.end method
.method public static ids_get_properties_from_cache(Ljava/lang/Object;I[Ljava/lang/String;Lcom/blackberry/ids/PropertyResponseData;Lcom/blackberry/ids/RequestId;)I
.registers 12
const/4 v0, -0x1
const/4 v1, 0x0
sget-object v2, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
monitor-enter v2
:try_start_5
sget-object v3, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
invoke-virtual {v3}, Lcom/blackberry/ids/BBIDStorage;->d()Ljava/lang/String;
move-result-object v3
if-nez v3, :cond_1f
const-string v1, "ids_get_properties_from_cache - request_id=%s no reqToken"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object p4, v3, v4
invoke-static {v1, v3}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
const v1, 0xc3ea
iput v1, p3, Lcom/blackberry/ids/PropertyResponseData;->errorCode:I
monitor-exit v2
:goto_1e
return v0
:cond_1f
sget-object v3, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
invoke-virtual {v3}, Lcom/blackberry/ids/BBIDStorage;->f()Z
move-result v3
if-eqz v3, :cond_90
sget-object v3, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
invoke-virtual {v3, p2}, Lcom/blackberry/ids/BBIDStorage;->a([Ljava/lang/String;)[Lcom/blackberry/ids/Property;
move-result-object v3
if-eqz v3, :cond_7d
array-length v4, v3
if-lez v4, :cond_7d
const-string v0, "ids_get_properties_from_cache - request_id=%s - Properties[%d] Found in storage !"
const/4 v4, 0x2
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
aput-object p4, v4, v5
const/4 v5, 0x1
array-length v6, v3
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
invoke-static {v0, v4}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
move v0, v1
:goto_46
array-length v4, v3
if-ge v0, v4, :cond_75
aget-object v4, v3, v0
iget-object v4, v4, Lcom/blackberry/ids/Property;->name:Ljava/lang/String;
const-string v5, "urn:bbid:uid"
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_72
aget-object v4, v3, v0
iget-object v4, v4, Lcom/blackberry/ids/Property;->value:Ljava/lang/String;
invoke-static {v4}, Lcom/blackberry/ids/CryptoUtils;->hashEcoid(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "ids_get_properties_from_cache - UID from cache (hashed) : "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
const/4 v5, 0x0
new-array v5, v5, [Ljava/lang/Object;
invoke-static {v4, v5}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
:cond_72
add-int/lit8 v0, v0, 0x1
goto :goto_46
:cond_75
iput-object v3, p3, Lcom/blackberry/ids/PropertyResponseData;->properties:[Lcom/blackberry/ids/Property;
const/4 v0, 0x0
iput v0, p3, Lcom/blackberry/ids/PropertyResponseData;->errorCode:I
monitor-exit v2
move v0, v1
goto :goto_1e
:cond_7d
const-string v1, "ids_get_properties_from_cache - request_id=%s - Properties could not be retrieved from storage"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object p4, v3, v4
invoke-static {v1, v3}, Lcom/blackberry/ids/Ln;->e(Ljava/lang/Object;[Ljava/lang/Object;)V
const/4 v1, -0x1
iput v1, p3, Lcom/blackberry/ids/PropertyResponseData;->errorCode:I
:goto_8b
monitor-exit v2
:try_end_8c
.catchall {:try_start_5 .. :try_end_8c} :catchall_8d
goto :goto_1e
:catchall_8d
move-exception v0
monitor-exit v2
throw v0
:cond_90
:try_start_90
const-string v1, "ids_get_properties_from_cache - request_id=%s - Properties not found or cache validity expired !"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object p4, v3, v4
invoke-static {v1, v3}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
const/4 v1, -0x1
iput v1, p3, Lcom/blackberry/ids/PropertyResponseData;->errorCode:I
:try_end_9e
.catchall {:try_start_90 .. :try_end_9e} :catchall_8d
goto :goto_8b
.end method
.method public static ids_get_token(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/blackberry/ids/IGetTokenCallback;Lcom/blackberry/ids/IFailureCallback;Lcom/blackberry/ids/RequestId;)I
.registers 7
invoke-static/range {p0 .. p5}, Lcom/blackberry/ids/IDS;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/blackberry/ids/IGetTokenCallback;Lcom/blackberry/ids/IFailureCallback;Lcom/blackberry/ids/RequestId;)I
move-result v0
return v0
.end method
.method public static ids_get_token_from_cache(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/blackberry/ids/TokenResponseData;Lcom/blackberry/ids/RequestId;)I
.registers 14
const/4 v8, 0x2
const/4 v0, -0x1
const/4 v7, 0x1
const/4 v1, 0x0
iput v0, p3, Lcom/blackberry/ids/TokenResponseData;->errorCode:I
const-string v2, "enter IDS.ids_get_token_from_cache request_id=%s type=%s appliesTo=%s"
const/4 v3, 0x3
new-array v3, v3, [Ljava/lang/Object;
aput-object p4, v3, v1
aput-object p1, v3, v7
aput-object p2, v3, v8
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-static {p2}, Lcom/blackberry/ids/TokenTempCache;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
sget-object v3, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
invoke-virtual {v3}, Lcom/blackberry/ids/BBIDStorage;->d()Ljava/lang/String;
move-result-object v3
if-nez v3, :cond_2f
const-string v2, "ids_get_token_from_cache request_id=%s - no reqToken"
new-array v3, v7, [Ljava/lang/Object;
aput-object p4, v3, v1
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
const v1, 0xc3ea
iput v1, p3, Lcom/blackberry/ids/TokenResponseData;->errorCode:I
:goto_2e
return v0
:cond_2f
sget-object v3, Lcom/blackberry/ids/IDS;->k:Lcom/blackberry/ids/TokenTempCache;
monitor-enter v3
:try_start_32
sget-object v4, Lcom/blackberry/ids/IDS;->k:Lcom/blackberry/ids/TokenTempCache;
invoke-static {p2}, Lcom/blackberry/ids/TokenTempCache;->a(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_78
const-string v4, "ids_get_token_from_cache - request_id=%s - a valid %s is found in cache"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
aput-object p4, v5, v6
const/4 v6, 0x1
aput-object v2, v5, v6
invoke-static {v4, v5}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
sget-object v4, Lcom/blackberry/ids/IDS;->k:Lcom/blackberry/ids/TokenTempCache;
invoke-static {p2}, Lcom/blackberry/ids/TokenTempCache;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
sget-object v5, Lcom/blackberry/ids/IDS;->k:Lcom/blackberry/ids/TokenTempCache;
invoke-static {p2}, Lcom/blackberry/ids/TokenTempCache;->c(Ljava/lang/String;)[Lcom/blackberry/ids/TokenParam;
move-result-object v5
if-eqz v4, :cond_62
if-eqz v5, :cond_62
iput-object v4, p3, Lcom/blackberry/ids/TokenResponseData;->token:Ljava/lang/String;
iput-object v5, p3, Lcom/blackberry/ids/TokenResponseData;->params:[Lcom/blackberry/ids/TokenParam;
const/4 v0, 0x0
iput v0, p3, Lcom/blackberry/ids/TokenResponseData;->errorCode:I
monitor-exit v3
move v0, v1
goto :goto_2e
:cond_62
const-string v4, "ids_get_token_from_cache - request_id=%s - problem during retrieval of %s from cache"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
aput-object p4, v5, v6
const/4 v6, 0x1
aput-object v2, v5, v6
invoke-static {v4, v5}, Lcom/blackberry/ids/Ln;->e(Ljava/lang/Object;[Ljava/lang/Object;)V
sget-object v4, Lcom/blackberry/ids/IDS;->k:Lcom/blackberry/ids/TokenTempCache;
invoke-static {p2}, Lcom/blackberry/ids/TokenTempCache;->d(Ljava/lang/String;)V
const/4 v4, -0x1
iput v4, p3, Lcom/blackberry/ids/TokenResponseData;->errorCode:I
:cond_78
monitor-exit v3
:try_end_79
.catchall {:try_start_32 .. :try_end_79} :catchall_85
const-string v3, "ids_get_token_from_cache - request_id=%s - Token type %s could not be found in cache"
new-array v4, v8, [Ljava/lang/Object;
aput-object p4, v4, v1
aput-object v2, v4, v7
invoke-static {v3, v4}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_2e
:catchall_85
move-exception v0
monitor-exit v3
throw v0
.end method
.method public static ids_get_version()I
.registers 3
const/4 v2, 0x0
const-string v0, "enter IDS.ids_get_version"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_start_8
invoke-static {}, Lcom/blackberry/ids/IDS;->getVersion()I
:try_end_b
.catchall {:try_start_8 .. :try_end_b} :catchall_14
move-result v0
const-string v1, "exit IDS.ids_get_version"
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
return v0
:catchall_14
move-exception v0
const-string v1, "exit IDS.ids_get_version"
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
throw v0
.end method
.method public static ids_initialize()I
.registers 3
const/4 v2, 0x0
const-string v0, "enter IDS.ids_initialize"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v0, "exit IDS.ids_initialize"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
return v2
.end method
.method public static ids_manage_identity(Ljava/lang/Object;ILcom/blackberry/ids/IManageIdentityCallback;Lcom/blackberry/ids/IFailureCallback;Lcom/blackberry/ids/RequestId;)I
.registers 6
invoke-static {p0, p1, p2, p3, p4}, Lcom/blackberry/ids/IDS;->a(Ljava/lang/Object;ILcom/blackberry/ids/IManageIdentityCallback;Lcom/blackberry/ids/IFailureCallback;Lcom/blackberry/ids/RequestId;)I
move-result v0
return v0
.end method
.method public static ids_register_notifier(Ljava/lang/Object;Ljava/lang/String;IILjava/lang/String;Lcom/blackberry/ids/INotificationCallback;)I
.registers 12
const/4 v0, -0x1
const/4 v5, 0x1
const/4 v4, 0x0
const-string v1, "ids_register_notifier - type %d, flags %d caller %s"
const/4 v2, 0x3
new-array v2, v2, [Ljava/lang/Object;
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v5
const/4 v3, 0x2
aput-object p1, v2, v3
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
if-eqz p1, :cond_22
invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-eqz v1, :cond_2a
:cond_22
const-string v1, "ids_register_notifier - clientID null"
new-array v2, v4, [Ljava/lang/Object;
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
:goto_29
return v0
:cond_2a
if-nez p3, :cond_31
invoke-static {p2, p1, p5}, Lcom/blackberry/ids/NotificationManager;->addNotifier(ILjava/lang/String;Lcom/blackberry/ids/INotificationCallback;)I
move-result v0
goto :goto_29
:cond_31
if-ne p3, v5, :cond_38
invoke-static {p2, p1, p5}, Lcom/blackberry/ids/NotificationManager;->removeNotifier(ILjava/lang/String;Lcom/blackberry/ids/INotificationCallback;)I
move-result v0
goto :goto_29
:cond_38
const-string v1, "ids_register_notifier - flags not recognized %d"
new-array v2, v5, [Ljava/lang/Object;
invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_29
.end method
.method public static ids_register_provider(Ljava/lang/String;)I
.registers 4
const/4 v2, 0x0
const-string v0, "enter IDS.ids_register_provider"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v0, "exit IDS.ids_register_provider"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
const/4 v0, -0x1
return v0
.end method
.method public static ids_set_option(ILjava/lang/String;)I
.registers 3
invoke-static {p0, p1}, Lcom/blackberry/ids/IDS;->a(ILjava/lang/String;)I
move-result v0
return v0
.end method
.method public static ids_shutdown()V
.registers 3
const/4 v2, 0x0
const-string v0, "enter IDS.ids_shutdown"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v0, "exit IDS.ids_shutdown"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method public static declared-synchronized init(Landroid/content/Context;)V
.registers 4
const-class v1, Lcom/blackberry/ids/IDS;
monitor-enter v1
:try_start_3
const-string v0, "Default init has been called --- setting the env corresponding to branch"
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0, v2}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v0, "production"
invoke-static {p0, v0}, Lcom/blackberry/ids/IDS;->init_with_ecosystem(Landroid/content/Context;Ljava/lang/String;)V
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_12
monitor-exit v1
return-void
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static declared-synchronized init_with_ecosystem(Landroid/content/Context;Ljava/lang/String;)V
.registers 11
const-class v6, Lcom/blackberry/ids/IDS;
monitor-enter v6
:try_start_3
sget-boolean v0, Lcom/blackberry/ids/IDS;->c:Z
if-eqz v0, :cond_11
const-string v0, "init_with_ecosystem has been called before -- skipping init"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_f
.catchall {:try_start_3 .. :try_end_f} :catchall_202
:goto_f
monitor-exit v6
return-void
:cond_11
:try_start_11
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/logs"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/blackberry/ids/Ln;->setLogFileBasePath(Ljava/lang/String;)V
sput-object p0, Lcom/blackberry/ids/IDS;->d:Landroid/content/Context;
new-instance v0, Lcom/blackberry/ids/BBIDStorage;
sget-object v1, Lcom/blackberry/ids/IDS;->d:Landroid/content/Context;
invoke-direct {v0, v1}, Lcom/blackberry/ids/BBIDStorage;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
const-string v0, "android.os.Build.BRAND: %s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v0, "android.os.Build.DEVICE: %s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v0, "android.os.Build.DISPLAY: %s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v0, "android.os.Build.MODEL: %s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v0, "android.os.Build.PRODUCT: %s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v0, "android.os.Build.VERSION.RELEASE: %s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_88
.catchall {:try_start_11 .. :try_end_88} :catchall_202
:try_start_88
const-string v0, "Init - IDS native library loaded, version: %s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {}, Lcom/blackberry/ids/IDS;->getVersionString()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_start_97
:try_end_97
.catchall {:try_start_88 .. :try_end_97} :catchall_202
.catch Ljava/lang/UnsatisfiedLinkError; {:try_start_88 .. :try_end_97} :catch_205
:goto_97
sget-object v0, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
invoke-virtual {v0}, Lcom/blackberry/ids/BBIDStorage;->a()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_b8
sget-object v0, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v1
invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v1
iget-object v0, v0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v2, "app_guid"
invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
:cond_b8
const-string v0, "str"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_d8
const-string v0, "production"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_d8
const-string v0, "dev"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_d8
const-string v0, "staging"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_210
:cond_d8
const/4 v0, 0x5
invoke-static {v0, p1}, Lcom/blackberry/ids/IDS;->ids_set_option(ILjava/lang/String;)I
const-string v0, "Init - the eco system is set according to configuration - %s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p1, v1, v2
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
:goto_e7
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v2
sub-long/2addr v0, v2
sget-object v2, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
iget-object v2, v2, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
const-string v3, "LAST_BOOT_TIME"
const-wide/16 v4, 0x0
invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v2
sub-long v4, v2, v0
invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J
move-result-wide v4
const-wide/16 v7, 0x3e8
cmp-long v4, v4, v7
if-lez v4, :cond_13a
const-string v4, "Init - Boot time doesn\'t match (old boot time : %d) - mark to Blow away all Tokens"
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/Object;
const/4 v7, 0x0
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v5, v7
invoke-static {v4, v5}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-static {}, Lcom/blackberry/ids/IDS;->o()V
const-string v2, "Init - Storing the new Boot time - %d"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
aput-object v5, v3, v4
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
sget-object v2, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
iget-object v2, v2, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v2
const-string v3, "LAST_BOOT_TIME"
invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
:cond_13a
sget-object v0, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
invoke-virtual {v0}, Lcom/blackberry/ids/BBIDStorage;->e()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_220
sget-object v0, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
invoke-virtual {v0}, Lcom/blackberry/ids/BBIDStorage;->d()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_220
sget-object v0, Lcom/blackberry/ids/UserAuthState$AuthState;->NO_USER_ACC:Lcom/blackberry/ids/UserAuthState$AuthState;
invoke-static {v0}, Lcom/blackberry/ids/UserAuthState;->a(Lcom/blackberry/ids/UserAuthState$AuthState;)V
:goto_14f
const-string v0, "Init - creating new temp token cache"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v0, Lcom/blackberry/ids/TokenTempCache;
invoke-direct {v0}, Lcom/blackberry/ids/TokenTempCache;-><init>()V
sput-object v0, Lcom/blackberry/ids/IDS;->k:Lcom/blackberry/ids/TokenTempCache;
new-instance v0, Lcom/blackberry/ids/BlockedTokenList;
sget-object v1, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
invoke-virtual {v1}, Lcom/blackberry/ids/BBIDStorage;->h()Ljava/util/Set;
move-result-object v1
sget-object v2, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
invoke-virtual {v2}, Lcom/blackberry/ids/BBIDStorage;->j()Ljava/util/Set;
move-result-object v2
sget-object v3, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
invoke-virtual {v3}, Lcom/blackberry/ids/BBIDStorage;->getReqBackOffConfig()J
move-result-wide v3
sget-object v5, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
invoke-virtual {v5}, Lcom/blackberry/ids/BBIDStorage;->getRequestBackOff()Ljava/lang/String;
move-result-object v5
invoke-direct/range {v0 .. v5}, Lcom/blackberry/ids/BlockedTokenList;-><init>(Ljava/util/Set;Ljava/util/Set;JLjava/lang/String;)V
sput-object v0, Lcom/blackberry/ids/IDS;->m:Lcom/blackberry/ids/BlockedTokenList;
invoke-static {p0}, Lcom/blackberry/ids/IDS;->c(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
const-string v1, "IDS App package version string : %s"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object v0, v2, v3
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v1, "IDS version : %s"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-static {}, Lcom/blackberry/ids/IDS;->getVersionString()Ljava/lang/String;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "BBIdentity Android/"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Lcom/blackberry/ids/IDS;->getVersionString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " ("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ")/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/blackberry/ids/IDS;->i:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "User-Agent: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v1, Lcom/blackberry/ids/IDS;->i:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
const/high16 v0, 0x1001
invoke-static {p0, v0}, Lcom/blackberry/ids/IDS;->setActivityContext(Landroid/content/Context;I)V
invoke-static {p0}, Lcom/blackberry/ids/IDS;->b(Landroid/content/Context;)V
const/4 v0, 0x1
sput-boolean v0, Lcom/blackberry/ids/IDS;->c:Z
:try_end_200
.catchall {:try_start_97 .. :try_end_200} :catchall_202
goto/16 :goto_f
:catchall_202
move-exception v0
monitor-exit v6
throw v0
:catch_205
move-exception v0
:try_start_206
const-string v1, "Init - IDS native library is not loaded!"
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/blackberry/ids/Ln;->e(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
goto/16 :goto_97
:cond_210
const/4 v0, 0x5
const-string v1, "production"
invoke-static {v0, v1}, Lcom/blackberry/ids/IDS;->ids_set_option(ILjava/lang/String;)I
const-string v0, "Init - the eco system is defaulted to PRODUCTION"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
goto/16 :goto_e7
:cond_220
sget-object v0, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
invoke-virtual {v0}, Lcom/blackberry/ids/BBIDStorage;->d()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_22f
sget-object v0, Lcom/blackberry/ids/UserAuthState$AuthState;->NOT_AUTHENTICATED:Lcom/blackberry/ids/UserAuthState$AuthState;
invoke-static {v0}, Lcom/blackberry/ids/UserAuthState;->a(Lcom/blackberry/ids/UserAuthState$AuthState;)V
goto/16 :goto_14f
:cond_22f
sget-object v0, Lcom/blackberry/ids/UserAuthState$AuthState;->AUTHENTICATED:Lcom/blackberry/ids/UserAuthState$AuthState;
invoke-static {v0}, Lcom/blackberry/ids/UserAuthState;->a(Lcom/blackberry/ids/UserAuthState$AuthState;)V
:try_end_234
.catchall {:try_start_206 .. :try_end_234} :catchall_202
goto/16 :goto_14f
.end method
.method static synthetic j()Landroid/net/Uri;
.registers 1
sget-object v0, Lcom/blackberry/ids/IDS;->h:Landroid/net/Uri;
return-object v0
.end method
.method static synthetic k()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/blackberry/ids/IDS;->j:Ljava/lang/String;
return-object v0
.end method
.method static synthetic l()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/blackberry/ids/IDS;->i:Ljava/lang/String;
return-object v0
.end method
.method public static logException(Ljava/lang/Throwable;)V
.registers 3
const-string v0, "Exception in JNI, or unhandled Java Throwable"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {p0, v0, v1}, Lcom/blackberry/ids/Ln;->e(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method static synthetic m()Landroid/content/Context;
.registers 1
sget-object v0, Lcom/blackberry/ids/IDS;->f:Landroid/content/Context;
return-object v0
.end method
.method static synthetic n()I
.registers 1
sget v0, Lcom/blackberry/ids/IDS;->g:I
return v0
.end method
.method private static o()V
.registers 2
const-string v0, "flushAllStoredUserData - Clearing all the stored RP tokens, user prop, black and back off lists"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
sget-object v0, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
const-string v1, "BBM_TOKEN"
invoke-virtual {v0, v1}, Lcom/blackberry/ids/BBIDStorage;->a(Ljava/lang/String;)V
sget-object v0, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
const-string v1, "SIP_TOKEN"
invoke-virtual {v0, v1}, Lcom/blackberry/ids/BBIDStorage;->a(Ljava/lang/String;)V
sget-object v0, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
const-string v1, "CHANNELS_TOKEN"
invoke-virtual {v0, v1}, Lcom/blackberry/ids/BBIDStorage;->a(Ljava/lang/String;)V
sget-object v0, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
const-string v1, "DREAMS_ADS_TOKEN"
invoke-virtual {v0, v1}, Lcom/blackberry/ids/BBIDStorage;->a(Ljava/lang/String;)V
sget-object v0, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
const-string v1, "DREAMS_TAG_TOKEN"
invoke-virtual {v0, v1}, Lcom/blackberry/ids/BBIDStorage;->a(Ljava/lang/String;)V
sget-object v0, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
const-string v1, "ICRS_XPLAT_TOKEN"
invoke-virtual {v0, v1}, Lcom/blackberry/ids/BBIDStorage;->a(Ljava/lang/String;)V
sget-object v0, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
const-string v1, "GIST_XPLAT_TOKEN"
invoke-virtual {v0, v1}, Lcom/blackberry/ids/BBIDStorage;->a(Ljava/lang/String;)V
sget-object v0, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
invoke-virtual {v0}, Lcom/blackberry/ids/BBIDStorage;->g()V
sget-object v0, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
invoke-virtual {v0}, Lcom/blackberry/ids/BBIDStorage;->i()V
sget-object v0, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
invoke-virtual {v0}, Lcom/blackberry/ids/BBIDStorage;->k()V
sget-object v0, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
invoke-virtual {v0}, Lcom/blackberry/ids/BBIDStorage;->clearRequestBackOff()V
return-void
.end method
.method private static p()V
.registers 2
sget-object v0, Lcom/blackberry/ids/IDS;->k:Lcom/blackberry/ids/TokenTempCache;
if-eqz v0, :cond_4d
const-string v0, "flushAllCachedUserData - Clearing all the stored RP tokens, user prop, black and back off lists"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
sget-object v0, Lcom/blackberry/ids/IDS;->k:Lcom/blackberry/ids/TokenTempCache;
const-string v0, "urn:bbid:v1:bbmalaska"
invoke-static {v0}, Lcom/blackberry/ids/TokenTempCache;->d(Ljava/lang/String;)V
sget-object v0, Lcom/blackberry/ids/IDS;->k:Lcom/blackberry/ids/TokenTempCache;
const-string v0, "urn:bbid:v1:sipalaska"
invoke-static {v0}, Lcom/blackberry/ids/TokenTempCache;->d(Ljava/lang/String;)V
sget-object v0, Lcom/blackberry/ids/IDS;->k:Lcom/blackberry/ids/TokenTempCache;
const-string v0, "urn:bbid:v1:bbmchannels-alaska"
invoke-static {v0}, Lcom/blackberry/ids/TokenTempCache;->d(Ljava/lang/String;)V
sget-object v0, Lcom/blackberry/ids/IDS;->k:Lcom/blackberry/ids/TokenTempCache;
const-string v0, "urn:bbid:v1:dreams-ad-alaska"
invoke-static {v0}, Lcom/blackberry/ids/TokenTempCache;->d(Ljava/lang/String;)V
sget-object v0, Lcom/blackberry/ids/IDS;->k:Lcom/blackberry/ids/TokenTempCache;
const-string v0, "urn:bbid:v1:dreams-tag-alaska"
invoke-static {v0}, Lcom/blackberry/ids/TokenTempCache;->d(Ljava/lang/String;)V
sget-object v0, Lcom/blackberry/ids/IDS;->k:Lcom/blackberry/ids/TokenTempCache;
const-string v0, "urn:bbid:v1:icrs-xplatform"
invoke-static {v0}, Lcom/blackberry/ids/TokenTempCache;->d(Ljava/lang/String;)V
sget-object v0, Lcom/blackberry/ids/IDS;->k:Lcom/blackberry/ids/TokenTempCache;
const-string v0, "urn:bbid:v1:gist-xplatform"
invoke-static {v0}, Lcom/blackberry/ids/TokenTempCache;->d(Ljava/lang/String;)V
sget-object v0, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
invoke-virtual {v0}, Lcom/blackberry/ids/BBIDStorage;->g()V
sget-object v0, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
invoke-virtual {v0}, Lcom/blackberry/ids/BBIDStorage;->i()V
sget-object v0, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
invoke-virtual {v0}, Lcom/blackberry/ids/BBIDStorage;->k()V
:goto_4c
return-void
:cond_4d
invoke-static {}, Lcom/blackberry/ids/IDS;->o()V
goto :goto_4c
.end method
.method private static q()I
.registers 3
const/4 v2, 0x0
:try_start_1
sget-object v0, Lcom/blackberry/ids/IDS;->d:Landroid/content/Context;
invoke-static {v0}, Lcom/blackberry/ids/LoginActivity;->cancelChallenge(Landroid/content/Context;)V
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_e
const-string v0, "exit IDS.ids_cancel_challenge"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
return v2
:catchall_e
move-exception v0
const-string v1, "exit IDS.ids_cancel_challenge"
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
throw v0
.end method
.method private static r()I
.registers 7
const/4 v6, 0x0
:try_start_1
sget-object v1, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
monitor-enter v1
:try_start_4
:try_end_4
.catchall {:try_start_1 .. :try_end_4} :catchall_98
sget-object v2, Lcom/blackberry/ids/IDS;->k:Lcom/blackberry/ids/TokenTempCache;
monitor-enter v2
:try_start_7
:try_end_7
.catchall {:try_start_4 .. :try_end_7} :catchall_95
sget-object v0, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
invoke-virtual {v0, v3, v4, v5}, Lcom/blackberry/ids/BBIDStorage;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
sget-object v0, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
const-string v3, "clearChallengeCode -- going to remove chalenge code from storage!"
const/4 v4, 0x0
new-array v4, v4, [Ljava/lang/Object;
invoke-static {v3, v4}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v0, v0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v3, "challenge_code"
invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
sget-object v0, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
invoke-virtual {v0}, Lcom/blackberry/ids/BBIDStorage;->g()V
sget-object v0, Lcom/blackberry/ids/IDS;->e:Lcom/blackberry/ids/BBIDStorage;
const-string v3, "clearBBMDiplayName -- going to remove BBM Display name from storage!"
const/4 v4, 0x0
new-array v4, v4, [Ljava/lang/Object;
invoke-static {v3, v4}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v0, v0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v3, "bbmdn"
invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
sget-object v0, Lcom/blackberry/ids/IDS;->k:Lcom/blackberry/ids/TokenTempCache;
const-string v0, "urn:bbid:v1:bbmalaska"
invoke-static {v0}, Lcom/blackberry/ids/TokenTempCache;->d(Ljava/lang/String;)V
sget-object v0, Lcom/blackberry/ids/IDS;->k:Lcom/blackberry/ids/TokenTempCache;
const-string v0, "urn:bbid:v1:sipalaska"
invoke-static {v0}, Lcom/blackberry/ids/TokenTempCache;->d(Ljava/lang/String;)V
sget-object v0, Lcom/blackberry/ids/IDS;->k:Lcom/blackberry/ids/TokenTempCache;
const-string v0, "urn:bbid:v1:bbmchannels-alaska"
invoke-static {v0}, Lcom/blackberry/ids/TokenTempCache;->d(Ljava/lang/String;)V
sget-object v0, Lcom/blackberry/ids/IDS;->k:Lcom/blackberry/ids/TokenTempCache;
const-string v0, "urn:bbid:v1:dreams-ad-alaska"
invoke-static {v0}, Lcom/blackberry/ids/TokenTempCache;->d(Ljava/lang/String;)V
sget-object v0, Lcom/blackberry/ids/IDS;->k:Lcom/blackberry/ids/TokenTempCache;
const-string v0, "urn:bbid:v1:dreams-tag-alaska"
invoke-static {v0}, Lcom/blackberry/ids/TokenTempCache;->d(Ljava/lang/String;)V
sget-object v0, Lcom/blackberry/ids/IDS;->k:Lcom/blackberry/ids/TokenTempCache;
const-string v0, "urn:bbid:v1:icrs-xplatform"
invoke-static {v0}, Lcom/blackberry/ids/TokenTempCache;->d(Ljava/lang/String;)V
sget-object v0, Lcom/blackberry/ids/IDS;->k:Lcom/blackberry/ids/TokenTempCache;
const-string v0, "urn:bbid:v1:gist-xplatform"
invoke-static {v0}, Lcom/blackberry/ids/TokenTempCache;->d(Ljava/lang/String;)V
sget-object v0, Lcom/blackberry/ids/IDS;->m:Lcom/blackberry/ids/BlockedTokenList;
const/4 v3, 0x1
invoke-virtual {v0, v3}, Lcom/blackberry/ids/BlockedTokenList;->a(I)V
sget-object v0, Lcom/blackberry/ids/IDS;->m:Lcom/blackberry/ids/BlockedTokenList;
const/4 v3, 0x2
invoke-virtual {v0, v3}, Lcom/blackberry/ids/BlockedTokenList;->a(I)V
sget-object v0, Lcom/blackberry/ids/UserAuthState$AuthState;->NO_USER_ACC:Lcom/blackberry/ids/UserAuthState$AuthState;
invoke-static {v0}, Lcom/blackberry/ids/UserAuthState;->b(Lcom/blackberry/ids/UserAuthState$AuthState;)V
monitor-exit v2
:try_start_89
:try_end_89
.catchall {:try_start_7 .. :try_end_89} :catchall_92
monitor-exit v1
:try_end_8a
.catchall {:try_start_89 .. :try_end_8a} :catchall_95
const-string v0, "exit IDS.ids_clear_identity"
new-array v1, v6, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
return v6
:catchall_92
move-exception v0
:try_start_93
monitor-exit v2
throw v0
:try_end_95
.catchall {:try_start_93 .. :try_end_95} :catchall_95
:catchall_95
move-exception v0
:try_start_96
monitor-exit v1
throw v0
:try_end_98
.catchall {:try_start_96 .. :try_end_98} :catchall_98
:catchall_98
move-exception v0
const-string v1, "exit IDS.ids_clear_identity"
new-array v2, v6, [Ljava/lang/Object;
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
throw v0
.end method
.method public static setActivityContext(Landroid/content/Context;I)V
.registers 8
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
const-string v0, "enter IDS.setActivityContext startActivityContext=%s startActivityFlags=%x"
new-array v1, v5, [Ljava/lang/Object;
aput-object p0, v1, v3
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v4
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_start_12
sget-object v0, Lcom/blackberry/ids/IDS;->b:Ljava/util/concurrent/ExecutorService;
new-instance v1, Lcom/blackberry/ids/IDS$10;
invoke-direct {v1, p0, p1}, Lcom/blackberry/ids/IDS$10;-><init>(Landroid/content/Context;I)V
invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
:try_end_1c
.catchall {:try_start_12 .. :try_end_1c} :catchall_2c
const-string v0, "exit IDS.setActivityContext startActivityContext=%s startActivityFlags=%x"
new-array v1, v5, [Ljava/lang/Object;
aput-object p0, v1, v3
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v4
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
:catchall_2c
move-exception v0
const-string v1, "exit IDS.setActivityContext startActivityContext=%s startActivityFlags=%x"
new-array v2, v5, [Ljava/lang/Object;
aput-object p0, v2, v3
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
throw v0
.end method