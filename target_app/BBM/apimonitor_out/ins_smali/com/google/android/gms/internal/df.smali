.class public Lcom/google/android/gms/internal/df;
.super Landroid/webkit/WebChromeClient;
.field private final ng:Lcom/google/android/gms/internal/dd;
.method public constructor <init>(Lcom/google/android/gms/internal/dd;)V
.registers 2
invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/df;->ng:Lcom/google/android/gms/internal/dd;
return-void
.end method
.method private static a(Landroid/app/AlertDialog$Builder;Ljava/lang/String;Landroid/webkit/JsResult;)V
.registers 6
invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x104000a
new-instance v2, Lcom/google/android/gms/internal/df$3;
invoke-direct {v2, p2}, Lcom/google/android/gms/internal/df$3;-><init>(Landroid/webkit/JsResult;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const/high16 v1, 0x104
new-instance v2, Lcom/google/android/gms/internal/df$2;
invoke-direct {v2, p2}, Lcom/google/android/gms/internal/df$2;-><init>(Landroid/webkit/JsResult;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
new-instance v1, Lcom/google/android/gms/internal/df$1;
invoke-direct {v1, p2}, Lcom/google/android/gms/internal/df$1;-><init>(Landroid/webkit/JsResult;)V
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
return-void
.end method
.method private static a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V
.registers 9
new-instance v0, Landroid/widget/LinearLayout;
invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V
new-instance v1, Landroid/widget/TextView;
invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
new-instance v2, Landroid/widget/EditText;
invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V
invoke-virtual {v2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x104000a
new-instance v3, Lcom/google/android/gms/internal/df$6;
invoke-direct {v3, p4, v2}, Lcom/google/android/gms/internal/df$6;-><init>(Landroid/webkit/JsPromptResult;Landroid/widget/EditText;)V
invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const/high16 v1, 0x104
new-instance v2, Lcom/google/android/gms/internal/df$5;
invoke-direct {v2, p4}, Lcom/google/android/gms/internal/df$5;-><init>(Landroid/webkit/JsPromptResult;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
new-instance v1, Lcom/google/android/gms/internal/df$4;
invoke-direct {v1, p4}, Lcom/google/android/gms/internal/df$4;-><init>(Landroid/webkit/JsPromptResult;)V
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
return-void
.end method
.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z
.registers 8
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
if-eqz p6, :cond_f
invoke-static {p0, v0, p2, p3, p5}, Lcom/google/android/gms/internal/df;->a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V
:goto_d
const/4 v0, 0x1
return v0
:cond_f
invoke-static {v0, p2, p4}, Lcom/google/android/gms/internal/df;->a(Landroid/app/AlertDialog$Builder;Ljava/lang/String;Landroid/webkit/JsResult;)V
goto :goto_d
.end method
.method protected final a(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/df;->ng:Lcom/google/android/gms/internal/dd;
invoke-virtual {v0}, Lcom/google/android/gms/internal/dd;->ba()Lcom/google/android/gms/internal/bo;
move-result-object v0
if-nez v0, :cond_11
const-string v0, "Could not get ad overlay when showing custom view."
invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V
invoke-interface {p3}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V
:goto_10
return-void
:cond_11
invoke-virtual {v0, p1, p3}, Lcom/google/android/gms/internal/bo;->a(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/bo;->setRequestedOrientation(I)V
goto :goto_10
.end method
.method public final onCloseWindow(Landroid/webkit/WebView;)V
.registers 3
instance-of v0, p1, Lcom/google/android/gms/internal/dd;
if-nez v0, :cond_a
const-string v0, "Tried to close a WebView that wasn\'t an AdWebView."
invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V
:goto_9
return-void
:cond_a
check-cast p1, Lcom/google/android/gms/internal/dd;
invoke-virtual {p1}, Lcom/google/android/gms/internal/dd;->ba()Lcom/google/android/gms/internal/bo;
move-result-object v0
if-nez v0, :cond_18
const-string v0, "Tried to close an AdWebView not associated with an overlay."
invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V
goto :goto_9
:cond_18
invoke-virtual {v0}, Lcom/google/android/gms/internal/bo;->close()V
goto :goto_9
.end method
.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "JS: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " ("
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ":"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/google/android/gms/internal/df$7;->qr:[I
invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;
move-result-object v2
invoke-virtual {v2}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_5c
invoke-static {v0}, Lcom/google/android/gms/internal/da;->u(Ljava/lang/String;)V
:goto_47
invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
move-result v0
return v0
:pswitch_4c
invoke-static {v0}, Lcom/google/android/gms/internal/da;->t(Ljava/lang/String;)V
goto :goto_47
:pswitch_50
invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V
goto :goto_47
:pswitch_54
invoke-static {v0}, Lcom/google/android/gms/internal/da;->u(Ljava/lang/String;)V
goto :goto_47
:pswitch_58
invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V
goto :goto_47
:pswitch_data_5c
.packed-switch 0x1
:pswitch_4c
:pswitch_50
:pswitch_54
:pswitch_54
:pswitch_58
.end packed-switch
.end method
.method public final onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.registers 8
iget-object v0, p4, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Landroid/webkit/WebView$WebViewTransport;
new-instance v1, Landroid/webkit/WebView;
invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;
move-result-object v2
invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
iget-object v2, p0, Lcom/google/android/gms/internal/df;->ng:Lcom/google/android/gms/internal/dd;
invoke-virtual {v2}, Lcom/google/android/gms/internal/dd;->bb()Lcom/google/android/gms/internal/de;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
invoke-virtual {v0, v1}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V
invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V
const/4 v0, 0x1
return v0
.end method
.method public final onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
.registers 14
const-wide/32 v0, 0x500000
sub-long/2addr v0, p7
const-wide/16 v2, 0x0
cmp-long v2, v0, v2
if-gtz v2, :cond_e
invoke-interface {p9, p3, p4}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V
:goto_d
return-void
:cond_e
const-wide/16 v2, 0x0
cmp-long v2, p3, v2
if-nez v2, :cond_26
cmp-long v0, p5, v0
if-gtz v0, :cond_23
const-wide/32 v0, 0x100000
cmp-long v0, p5, v0
if-gtz v0, :cond_23
:goto_1f
invoke-interface {p9, p5, p6}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V
goto :goto_d
:cond_23
const-wide/16 p5, 0x0
goto :goto_1f
:cond_26
const-wide/16 v2, 0x0
cmp-long v2, p5, v2
if-nez v2, :cond_3d
const-wide/32 v2, 0x20000
invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J
move-result-wide v0
add-long/2addr v0, p3
const-wide/32 v2, 0x100000
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J
move-result-wide p3
:goto_3b
:cond_3b
move-wide p5, p3
goto :goto_1f
:cond_3d
const-wide/32 v2, 0x100000
sub-long/2addr v2, p3
invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J
move-result-wide v0
cmp-long v0, p5, v0
if-gtz v0, :cond_3b
add-long/2addr p3, p5
goto :goto_3b
.end method
.method public final onHideCustomView()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/df;->ng:Lcom/google/android/gms/internal/dd;
invoke-virtual {v0}, Lcom/google/android/gms/internal/dd;->ba()Lcom/google/android/gms/internal/bo;
move-result-object v0
if-nez v0, :cond_e
const-string v0, "Could not get ad overlay when hiding custom view."
invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V
:goto_d
return-void
:cond_e
invoke-virtual {v0}, Lcom/google/android/gms/internal/bo;->aq()V
goto :goto_d
.end method
.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.registers 12
const/4 v3, 0x0
invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;
move-result-object v0
const/4 v6, 0x0
move-object v1, p2
move-object v2, p3
move-object v4, p4
move-object v5, v3
invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/df;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z
move-result v0
return v0
.end method
.method public final onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.registers 12
const/4 v3, 0x0
invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;
move-result-object v0
const/4 v6, 0x0
move-object v1, p2
move-object v2, p3
move-object v4, p4
move-object v5, v3
invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/df;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z
move-result v0
return v0
.end method
.method public final onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.registers 12
const/4 v3, 0x0
invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;
move-result-object v0
const/4 v6, 0x0
move-object v1, p2
move-object v2, p3
move-object v4, p4
move-object v5, v3
invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/df;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z
move-result v0
return v0
.end method
.method public final onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
.registers 13
invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;
move-result-object v0
const/4 v4, 0x0
const/4 v6, 0x1
move-object v1, p2
move-object v2, p3
move-object v3, p4
move-object v5, p5
invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/df;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z
move-result v0
return v0
.end method
.method public final onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
.registers 10
const-wide/32 v0, 0x500000
sub-long/2addr v0, p3
const-wide/32 v2, 0x20000
add-long/2addr v2, p1
cmp-long v0, v0, v2
if-gez v0, :cond_12
const-wide/16 v0, 0x0
invoke-interface {p5, v0, v1}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V
:goto_11
return-void
:cond_12
invoke-interface {p5, v2, v3}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V
goto :goto_11
.end method
.method public final onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
.registers 4
const/4 v0, -0x1
invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/df;->a(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
return-void
.end method