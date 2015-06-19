.class public Lcom/glympse/android/hal/Clipboard;
.super Ljava/lang/Object;
.source "Clipboard.java"
.implements Lcom/glympse/android/hal/GClipboard;
.field private e:Landroid/content/Context;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/hal/Clipboard;->e:Landroid/content/Context;
return-void
.end method
.method public copy(Ljava/lang/String;)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/glympse/android/hal/Clipboard;->e:Landroid/content/Context;
const-string v1, "clipboard"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/text/ClipboardManager;
invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V
:try_end_d
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e
:goto_d
return-void
:catch_e
move-exception v0
goto :goto_d
.end method