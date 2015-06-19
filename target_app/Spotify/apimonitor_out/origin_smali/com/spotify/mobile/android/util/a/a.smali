.class public Lcom/spotify/mobile/android/util/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/c/a;


# instance fields
.field private a:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/util/a/a;->a:Landroid/nfc/NfcAdapter;

    return-void
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/util/a/b;Landroid/app/Activity;)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/util/a/a;->a:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/spotify/mobile/android/util/a/a;->a:Landroid/nfc/NfcAdapter;

    new-instance v1, Lcom/spotify/mobile/android/util/a/a$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/spotify/mobile/android/util/a/a$1;-><init>(Lcom/spotify/mobile/android/util/a/a;Lcom/spotify/mobile/android/util/a/b;Landroid/app/Activity;)V

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/app/Activity;

    invoke-virtual {v0, v1, p2, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    goto :goto_4
.end method
