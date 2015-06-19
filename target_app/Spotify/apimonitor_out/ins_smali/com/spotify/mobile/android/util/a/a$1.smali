.class final Lcom/spotify/mobile/android/util/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
.field final synthetic a:Lcom/spotify/mobile/android/util/a/b;
.field final synthetic b:Landroid/app/Activity;
.field final synthetic c:Lcom/spotify/mobile/android/util/a/a;
.method constructor <init>(Lcom/spotify/mobile/android/util/a/a;Lcom/spotify/mobile/android/util/a/b;Landroid/app/Activity;)V
.registers 4
iput-object p1, p0, Lcom/spotify/mobile/android/util/a/a$1;->c:Lcom/spotify/mobile/android/util/a/a;
iput-object p2, p0, Lcom/spotify/mobile/android/util/a/a$1;->a:Lcom/spotify/mobile/android/util/a/b;
iput-object p3, p0, Lcom/spotify/mobile/android/util/a/a$1;->b:Landroid/app/Activity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/util/a/a$1;->a:Lcom/spotify/mobile/android/util/a/b;
invoke-interface {v0}, Lcom/spotify/mobile/android/util/a/b;->a()Landroid/net/Uri;
move-result-object v1
if-nez v1, :cond_a
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
new-instance v0, Landroid/nfc/NdefMessage;
const/4 v2, 0x2
new-array v2, v2, [Landroid/nfc/NdefRecord;
const/4 v3, 0x0
invoke-static {v1}, Landroid/nfc/NdefRecord;->createUri(Landroid/net/Uri;)Landroid/nfc/NdefRecord;
move-result-object v1
aput-object v1, v2, v3
const/4 v1, 0x1
iget-object v3, p0, Lcom/spotify/mobile/android/util/a/a$1;->b:Landroid/app/Activity;
invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;
move-result-object v3
invoke-virtual {v3}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
move-result-object v3
iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
invoke-static {v3}, Landroid/nfc/NdefRecord;->createApplicationRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;
move-result-object v3
aput-object v3, v2, v1
invoke-direct {v0, v2}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V
goto :goto_9
.end method