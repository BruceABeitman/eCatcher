.class public Lcom/google/android/gms/internal/fa;
.super Landroid/webkit/WebChromeClient;
.field private final lL:Lcom/google/android/gms/internal/ey;
.method public constructor <init>(Lcom/google/android/gms/internal/ey;)V
.registers 2
invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/fa;->lL:Lcom/google/android/gms/internal/ey;
return-void
.end method
.method private static a(Landroid/app/AlertDialog$Builder;Ljava/lang/String;Landroid/webkit/JsResult;)V
.registers 6
invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x104000a
new-instance v2, Lcom/google/android/gms/internal/fa$3;
invoke-direct {v2, p2}, Lcom/google/android/gms/internal/fa$3;-><init>(Landroid/webkit/JsResult;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const/high16 v1, 0x104
new-instance v2, Lcom/google/android/gms/internal/fa$2;
invoke-direct {v2, p2}, Lcom/google/android/gms/internal/fa$2;-><init>(Landroid/webkit/JsResult;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
new-instance v1, Lcom/google/android/gms/internal/fa$1;
invoke-direct {v1, p2}, Lcom/google/android/gms/internal/fa$1;-><init>(Landroid/webkit/JsResult;)V
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
new-instance v3, Lcom/google/android/gms/internal/fa$6;
invoke-direct {v3, p4, v2}, Lcom/google/android/gms/internal/fa$6;-><init>(Landroid/webkit/JsPromptResult;Landroid/widget/EditText;)V
invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const/high16 v1, 0x104
new-instance v2, Lcom/google/android/gms/internal/fa$5;
invoke-direct {v2, p4}, Lcom/google/android/gms/internal/fa$5;-><init>(Landroid/webkit/JsPromptResult;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
new-instance v1, Lcom/google/android/gms/internal/fa$4;
invoke-direct {v1, p4}, Lcom/google/android/gms/internal/fa$4;-><init>(Landroid/webkit/JsPromptResult;)V
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
return-void
.end method
.method protected final a(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/fa;->lL:Lcom/google/android/gms/internal/ey;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->bV()Lcom/google/android/gms/internal/cg;
move-result-object v0
if-nez v0, :cond_11
const-string v0, "Could not get ad overlay when showing custom view."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
invoke-interface {p3}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V
:goto_10
return-void
:cond_11
invoke-virtual {v0, p1, p3}, Lcom/google/android/gms/internal/cg;->a(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/cg;->setRequestedOrientation(I)V
goto :goto_10
.end method
.method protected a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z
.registers 10
:try_start_0
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
if-eqz p7, :cond_f
invoke-static {p1, v0, p3, p4, p6}, Lcom/google/android/gms/internal/fa;->a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V
:goto_d
const/4 v0, 0x1
return v0
:cond_f
invoke-static {v0, p3, p5}, Lcom/google/android/gms/internal/fa;->a(Landroid/app/AlertDialog$Builder;Ljava/lang/String;Landroid/webkit/JsResult;)V
:try_end_12
.catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_12} :catch_13
goto :goto_d
:catch_13
move-exception v0
const-string v1, "Fail to display Dialog."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_d
.end method
.method public final onCloseWindow(Landroid/webkit/WebView;)V
.registers 3
instance-of v0, p1, Lcom/google/android/gms/internal/ey;
if-nez v0, :cond_a
const-string v0, "Tried to close a WebView that wasn\'t an AdWebView."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
:goto_9
return-void
:cond_a
check-cast p1, Lcom/google/android/gms/internal/ey;
invoke-virtual {p1}, Lcom/google/android/gms/internal/ey;->bV()Lcom/google/android/gms/internal/cg;
move-result-object v0
if-nez v0, :cond_18
const-string v0, "Tried to close an AdWebView not associated with an overlay."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
goto :goto_9
:cond_18
invoke-virtual {v0}, Lcom/google/android/gms/internal/cg;->close()V
goto :goto_9
.end method
.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "JS: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
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
sget-object v1, Lcom/google/android/gms/internal/fa$7;->sP:[I
invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;
move-result-object v2
invoke-virtual {v2}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_60
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->B(Ljava/lang/String;)V
:goto_4b
invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
move-result v0
return v0
:pswitch_50
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->A(Ljava/lang/String;)V
goto :goto_4b
:pswitch_54
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
goto :goto_4b
:pswitch_58
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->B(Ljava/lang/String;)V
goto :goto_4b
:pswitch_5c
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
goto :goto_4b
:pswitch_data_60
.packed-switch 0x1
:pswitch_50
:pswitch_54
:pswitch_58
:pswitch_58
:pswitch_5c
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
iget-object v2, p0, Lcom/google/android/gms/internal/fa;->lL:Lcom/google/android/gms/internal/ey;
invoke-virtual {v2}, Lcom/google/android/gms/internal/ey;->bW()Lcom/google/android/gms/internal/ez;
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
if-nez v2, :cond_3c
const-wide/32 v2, 0x20000
invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J
move-result-wide v0
add-long/2addr v0, p3
const-wide/32 v2, 0x100000
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J
move-result-wide p5
goto :goto_1f
:cond_3c
const-wide/32 v2, 0x100000
sub-long/2addr v2, p3
invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J
move-result-wide v0
cmp-long v0, p5, v0
if-gtz v0, :cond_49
add-long/2addr p3, p5
:cond_49
move-wide p5, p3
goto :goto_1f
.end method
.method public final onHideCustomView()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/fa;->lL:Lcom/google/android/gms/internal/ey;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->bV()Lcom/google/android/gms/internal/cg;
move-result-object v0
if-nez v0, :cond_e
const-string v0, "Could not get ad overlay when hiding custom view."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
:goto_d
return-void
:cond_e
invoke-virtual {v0}, Lcom/google/android/gms/internal/cg;->aM()V
goto :goto_d
.end method
.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.registers 13
const/4 v7, 0x0
const/4 v4, 0x0
instance-of v0, p1, Lcom/google/android/gms/internal/ey;
if-eqz v0, :cond_1f
move-object v0, p1
check-cast v0, Lcom/google/android/gms/internal/ey;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->ca()Landroid/content/Context;
move-result-object v0
if-eqz v0, :cond_1f
check-cast p1, Lcom/google/android/gms/internal/ey;
invoke-virtual {p1}, Lcom/google/android/gms/internal/ey;->ca()Landroid/content/Context;
move-result-object v1
move-object v0, p0
move-object v2, p2
move-object v3, p3
move-object v5, p4
move-object v6, v4
invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/fa;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z
move-result v0
:goto_1e
return v0
:cond_1f
invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;
move-result-object v1
move-object v0, p0
move-object v2, p2
move-object v3, p3
move-object v5, p4
move-object v6, v4
invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/fa;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z
move-result v0
goto :goto_1e
.end method
.method public final onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.registers 13
const/4 v4, 0x0
invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;
move-result-object v1
const/4 v7, 0x0
move-object v0, p0
move-object v2, p2
move-object v3, p3
move-object v5, p4
move-object v6, v4
invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/fa;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z
move-result v0
return v0
.end method
.method public final onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.registers 13
const/4 v4, 0x0
invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;
move-result-object v1
const/4 v7, 0x0
move-object v0, p0
move-object v2, p2
move-object v3, p3
move-object v5, p4
move-object v6, v4
invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/fa;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z
move-result v0
return v0
.end method
.method public final onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
.registers 14
invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;
move-result-object v1
const/4 v5, 0x0
const/4 v7, 0x1
move-object v0, p0
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v6, p5
invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/fa;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z
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
invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/fa;->a(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
return-void
.end method