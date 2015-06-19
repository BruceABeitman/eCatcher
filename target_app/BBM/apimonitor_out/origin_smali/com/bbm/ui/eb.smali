.class public final Lcom/bbm/ui/eb;
.super Ljava/lang/Object;
.source "NFCInviteRequest.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
.implements Lcom/bbm/f/ac;


# static fields
.field private static final e:Lcom/bbm/d/bu;

.field private static h:Lcom/bbm/ui/eb;


# instance fields
.field private a:[B

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final g:Lcom/bbm/j/k;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/bbm/d/bu;->a:Lcom/bbm/d/bu;

    sput-object v0, Lcom/bbm/ui/eb;->e:Lcom/bbm/d/bu;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/bbm/ui/eb;->a:[B

    iput-object v1, p0, Lcom/bbm/ui/eb;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bbm/ui/eb;->d:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/bbm/ui/ec;

    invoke-direct {v0, p0}, Lcom/bbm/ui/ec;-><init>(Lcom/bbm/ui/eb;)V

    iput-object v0, p0, Lcom/bbm/ui/eb;->f:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    new-instance v0, Lcom/bbm/ui/ed;

    invoke-direct {v0, p0}, Lcom/bbm/ui/ed;-><init>(Lcom/bbm/ui/eb;)V

    iput-object v0, p0, Lcom/bbm/ui/eb;->g:Lcom/bbm/j/k;

    invoke-static {}, Lcom/bbm/Alaska;->a()Lcom/bbm/f/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ac;)V

    iget-object v0, p0, Lcom/bbm/ui/eb;->g:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    invoke-static {}, Lcom/bbm/Alaska;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/eb;->f:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/eb;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/eb;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/ui/eb;)Ljava/lang/ref/WeakReference;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/eb;->d:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic b()Lcom/bbm/d/bu;
    .registers 1

    sget-object v0, Lcom/bbm/ui/eb;->e:Lcom/bbm/d/bu;

    return-object v0
.end method

.method public static b(Landroid/app/Activity;)Lcom/bbm/ui/eb;
    .registers 5

    sget-object v0, Lcom/bbm/ui/eb;->h:Lcom/bbm/ui/eb;

    if-nez v0, :cond_b

    new-instance v0, Lcom/bbm/ui/eb;

    invoke-direct {v0}, Lcom/bbm/ui/eb;-><init>()V

    sput-object v0, Lcom/bbm/ui/eb;->h:Lcom/bbm/ui/eb;

    :cond_b
    sget-object v0, Lcom/bbm/ui/eb;->h:Lcom/bbm/ui/eb;

    iget-object v0, v0, Lcom/bbm/ui/eb;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_33

    sget-object v0, Lcom/bbm/ui/eb;->h:Lcom/bbm/ui/eb;

    sget-object v0, Lcom/bbm/ui/eb;->h:Lcom/bbm/ui/eb;

    iget-object v0, v0, Lcom/bbm/ui/eb;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    if-eqz v1, :cond_33

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_44

    :cond_33
    :goto_33
    sget-object v0, Lcom/bbm/ui/eb;->h:Lcom/bbm/ui/eb;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/bbm/ui/eb;->d:Ljava/lang/ref/WeakReference;

    sget-object v0, Lcom/bbm/ui/eb;->h:Lcom/bbm/ui/eb;

    invoke-virtual {v0, p0}, Lcom/bbm/ui/eb;->a(Landroid/app/Activity;)V

    sget-object v0, Lcom/bbm/ui/eb;->h:Lcom/bbm/ui/eb;

    return-object v0

    :cond_44
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_46
    new-array v3, v3, [Landroid/app/Activity;

    invoke-virtual {v1, v2, v0, v3}, Landroid/nfc/NfcAdapter;->setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;[Landroid/app/Activity;)V

    const-string v0, "NFC: ndef message removed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_53} :catch_54

    goto :goto_33

    :catch_54
    move-exception v0

    goto :goto_33
.end method

.method static synthetic b(Lcom/bbm/ui/eb;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/eb;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/bbm/ui/eb;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/eb;->b:Ljava/lang/String;

    return-object p1
.end method

.method private c()Landroid/nfc/NdefMessage;
    .registers 6

    new-instance v0, Landroid/nfc/NdefRecord;

    const/4 v1, 0x4

    const-string v2, "rim.com:bbm.52cb44481874219d"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "BBMInvitation"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iget-object v4, p0, Lcom/bbm/ui/eb;->a:[B

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    new-instance v1, Landroid/nfc/NdefMessage;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    return-object v1
.end method

.method static synthetic c(Lcom/bbm/ui/eb;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/eb;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static d()Z
    .registers 3

    invoke-static {}, Lcom/bbm/Alaska;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "add_contact_on_tap"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/bbm/ui/eb;)[B
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/ui/eb;->a:[B

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .registers 6

    const/4 v3, 0x0

    const-string v0, "NFC: setOrRemoveNfcNDefPushMessage"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-nez v0, :cond_1a

    const-string v0, "NFC: no nfc adapter found"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    if-eqz p1, :cond_22

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2a

    :cond_22
    const-string v0, "NFC: activity finishing or null"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_19

    :cond_2a
    :try_start_2a
    invoke-static {}, Lcom/bbm/ui/eb;->d()Z

    move-result v1

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/bbm/ui/eb;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_58

    iget-object v1, p0, Lcom/bbm/ui/eb;->a:[B

    if-eqz v1, :cond_58

    invoke-direct {p0}, Lcom/bbm/ui/eb;->c()Landroid/nfc/NdefMessage;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;[Landroid/app/Activity;)V

    const-string v0, "NFC: ndef message set"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_4e} :catch_4f

    goto :goto_19

    :catch_4f
    move-exception v0

    const-string v1, "Exception caught trying to set or remove an NFC Message"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_19

    :cond_58
    :try_start_58
    invoke-static {}, Lcom/bbm/ui/eb;->d()Z

    move-result v1

    if-eqz v1, :cond_87

    iget-object v1, p0, Lcom/bbm/ui/eb;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    sget-object v1, Lcom/bbm/ui/eb;->e:Lcom/bbm/d/bu;

    invoke-static {v1}, Lcom/bbm/d/z;->a(Lcom/bbm/d/bu;)Lcom/bbm/d/bt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    goto :goto_19

    :cond_74
    invoke-direct {p0}, Lcom/bbm/ui/eb;->c()Landroid/nfc/NdefMessage;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;[Landroid/app/Activity;)V

    const-string v0, "NFC: ndef message set"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_19

    :cond_87
    iget-object v1, p0, Lcom/bbm/ui/eb;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/eb;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/bbm/d/z;->e(Ljava/lang/String;)Lcom/bbm/d/bs;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    const-string v1, ""

    iput-object v1, p0, Lcom/bbm/ui/eb;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bbm/ui/eb;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;[Landroid/app/Activity;)V

    const-string v0, "NFC: ndef message removed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_b2} :catch_4f

    goto/16 :goto_19
.end method

.method public final a(Lcom/bbm/f/ab;)V
    .registers 6

    const/4 v3, 0x0

    invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-nez v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-object v0, p1, Lcom/bbm/f/ab;->b:Ljava/lang/String;

    const-string v1, "inviteCreated"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "NFC: nfcInvite message recieved"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;

    :try_start_1f
    const-string v1, "invite"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/bbm/ui/eb;->a:[B

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/eb;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/ui/eb;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/bbm/ui/eb;->a(Landroid/app/Activity;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_3f} :catch_40

    goto :goto_b

    :catch_40
    move-exception v0

    const-string v1, "NFC: Exception decoding the invite string"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_b
.end method

.method public final onNdefPushComplete(Landroid/nfc/NfcEvent;)V
    .registers 4

    const-string v0, "NFC:  onNdefPushComplete"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/eb;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/d/z;->f(Ljava/lang/String;)Lcom/bbm/d/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/ui/eb;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/ui/eb;->a:[B

    invoke-static {}, Lcom/bbm/ui/eb;->d()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    sget-object v1, Lcom/bbm/ui/eb;->e:Lcom/bbm/d/bu;

    invoke-static {v1}, Lcom/bbm/d/z;->a(Lcom/bbm/d/bu;)Lcom/bbm/d/bt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    :cond_2f
    return-void
.end method
