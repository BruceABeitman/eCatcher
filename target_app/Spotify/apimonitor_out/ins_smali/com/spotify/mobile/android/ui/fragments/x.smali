.class public abstract Lcom/spotify/mobile/android/ui/fragments/x;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"
.field private Y:Ljava/lang/Runnable;
.field private Z:I
.field private a:Landroid/webkit/WebView;
.field private aa:Z
.field private ab:Z
.field private ac:Z
.field private ad:Lcom/spotify/mobile/android/util/webview/b;
.field private b:Landroid/view/View;
.field private c:Landroid/widget/ProgressBar;
.field private d:Landroid/widget/TextView;
.field private e:Landroid/widget/TextView;
.field private f:Landroid/app/AlertDialog;
.field private g:Landroid/webkit/WebView;
.field private final h:Landroid/os/Handler;
.field private i:Ljava/lang/Runnable;
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->h:Landroid/os/Handler;
iput v1, p0, Lcom/spotify/mobile/android/ui/fragments/x;->Z:I
iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/x;->aa:Z
iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/x;->ab:Z
iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/x;->ac:Z
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/x;)V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->a:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/x;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/x;->c(I)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/x;Ljava/lang/String;Landroid/webkit/JsResult;)V
.registers 6
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/x;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x104000a
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/x$9;
invoke-direct {v2, p0, p2}, Lcom/spotify/mobile/android/ui/fragments/x$9;-><init>(Lcom/spotify/mobile/android/ui/fragments/x;Landroid/webkit/JsResult;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const/high16 v1, 0x104
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/x$8;
invoke-direct {v2, p0, p2}, Lcom/spotify/mobile/android/ui/fragments/x$8;-><init>(Lcom/spotify/mobile/android/ui/fragments/x;Landroid/webkit/JsResult;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/ui/fragments/x$7;
invoke-direct {v1, p0, p2}, Lcom/spotify/mobile/android/ui/fragments/x$7;-><init>(Lcom/spotify/mobile/android/ui/fragments/x;Landroid/webkit/JsResult;)V
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->f:Landroid/app/AlertDialog;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/x;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/fragments/x;->ab:Z
return p1
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/fragments/x;)I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->Z:I
return v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/fragments/x;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/fragments/x;->aa:Z
return p1
.end method
.method private c(I)V
.registers 8
const/4 v0, 0x1
const/16 v3, 0x8
const/4 v1, 0x0
const-string v2, "Changing state %d -> %d"
const/4 v4, 0x2
new-array v4, v4, [Ljava/lang/Object;
iget v5, p0, Lcom/spotify/mobile/android/ui/fragments/x;->Z:I
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v4, v1
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v4, v0
invoke-static {v2, v4}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
iput p1, p0, Lcom/spotify/mobile/android/ui/fragments/x;->Z:I
packed-switch p1, :pswitch_data_5c
:goto_1f
:pswitch_1f
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/x;->a:Landroid/webkit/WebView;
if-eqz v2, :cond_2b
iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/x;->a:Landroid/webkit/WebView;
if-eqz v0, :cond_54
move v2, v1
:goto_28
invoke-virtual {v4, v2}, Landroid/webkit/WebView;->setVisibility(I)V
:cond_2b
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/x;->d:Landroid/widget/TextView;
if-eqz v2, :cond_37
iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/x;->d:Landroid/widget/TextView;
if-eqz v0, :cond_56
move v2, v3
:goto_34
invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V
:cond_37
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/x;->e:Landroid/widget/TextView;
if-eqz v2, :cond_43
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/x;->e:Landroid/widget/TextView;
if-eqz v0, :cond_58
move v0, v3
:goto_40
invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V
:cond_43
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->b:Landroid/view/View;
if-eqz v0, :cond_4f
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->b:Landroid/view/View;
const/4 v2, 0x3
if-ne p1, v2, :cond_5a
:goto_4c
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_4f
return-void
:pswitch_50
move v0, v1
goto :goto_1f
:pswitch_52
move v0, v1
goto :goto_1f
:cond_54
move v2, v3
goto :goto_28
:cond_56
move v2, v1
goto :goto_34
:cond_58
move v0, v1
goto :goto_40
:cond_5a
move v1, v3
goto :goto_4c
:pswitch_data_5c
.packed-switch 0x0
:pswitch_1f
:pswitch_50
:pswitch_1f
:pswitch_52
.end packed-switch
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/fragments/x;Z)V
.registers 2
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/x;->d(Z)V
return-void
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/fragments/x;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->aa:Z
return v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/ui/fragments/x;)Lcom/spotify/mobile/android/util/webview/b;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->ad:Lcom/spotify/mobile/android/util/webview/b;
return-object v0
.end method
.method private d(Z)V
.registers 6
iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/fragments/x;->ac:Z
if-eqz p1, :cond_15
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->c:Landroid/widget/ProgressBar;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->h:Landroid/os/Handler;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/x;->i:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->i:Ljava/lang/Runnable;
:goto_14
:cond_14
return-void
:cond_15
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->i:Ljava/lang/Runnable;
if-nez v0, :cond_14
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/x$6;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/x$6;-><init>(Lcom/spotify/mobile/android/ui/fragments/x;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->i:Ljava/lang/Runnable;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->h:Landroid/os/Handler;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/x;->i:Ljava/lang/Runnable;
const-wide/16 v2, 0x64
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
goto :goto_14
.end method
.method static synthetic e(Lcom/spotify/mobile/android/ui/fragments/x;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->ab:Z
return v0
.end method
.method static synthetic f(Lcom/spotify/mobile/android/ui/fragments/x;)Landroid/widget/ProgressBar;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->c:Landroid/widget/ProgressBar;
return-object v0
.end method
.method static synthetic g(Lcom/spotify/mobile/android/ui/fragments/x;)Ljava/lang/Runnable;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->i:Ljava/lang/Runnable;
return-object v0
.end method
.method static synthetic h(Lcom/spotify/mobile/android/ui/fragments/x;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->h:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic i(Lcom/spotify/mobile/android/ui/fragments/x;)Ljava/lang/Runnable;
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->i:Ljava/lang/Runnable;
return-object v0
.end method
.method static synthetic j(Lcom/spotify/mobile/android/ui/fragments/x;)Landroid/app/AlertDialog;
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->f:Landroid/app/AlertDialog;
return-object v0
.end method
.method public D()Z
.registers 3
const/4 v0, 0x0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/x;->a:Landroid/webkit/WebView;
if-nez v1, :cond_6
:cond_5
:goto_5
return v0
:cond_6
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/x;->a:Landroid/webkit/WebView;
invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z
move-result v1
if-eqz v1, :cond_5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->a:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V
const/4 v0, 0x1
goto :goto_5
.end method
.method protected final E()Landroid/webkit/WebView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->a:Landroid/webkit/WebView;
return-object v0
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 10
const/4 v3, 0x0
const/4 v5, -0x1
const/4 v4, 0x1
const-string v1, "onCreateView()%s"
new-array v2, v4, [Ljava/lang/Object;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->g:Landroid/webkit/WebView;
if-nez v0, :cond_90
const-string v0, ""
:goto_d
aput-object v0, v2, v3
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/x;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v1, 0x7f03007c
invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
const v2, 0x7f0a02e3
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
iput-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/x;->b:Landroid/view/View;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/x;->b:Landroid/view/View;
new-instance v3, Lcom/spotify/mobile/android/ui/fragments/x$1;
invoke-direct {v3, p0}, Lcom/spotify/mobile/android/ui/fragments/x$1;-><init>(Lcom/spotify/mobile/android/ui/fragments/x;)V
invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/x;->g:Landroid/webkit/WebView;
if-eqz v2, :cond_94
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->g:Landroid/webkit/WebView;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->a:Landroid/webkit/WebView;
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->g:Landroid/webkit/WebView;
:goto_3b
const v0, 0x7f0a02e0
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/x;->a:Landroid/webkit/WebView;
invoke-virtual {v0, v2, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V
const v0, 0x7f0a02e1
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->d:Landroid/widget/TextView;
const v0, 0x7f0a02e2
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->e:Landroid/widget/TextView;
const v0, 0x7f0a02bd
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ProgressBar;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->c:Landroid/widget/ProgressBar;
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->ac:Z
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/x;->d(Z)V
iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->Z:I
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/x;->c(I)V
iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->Z:I
if-eqz v0, :cond_7c
iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->Z:I
if-ne v0, v4, :cond_8f
:cond_7c
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/x$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/x$2;-><init>(Lcom/spotify/mobile/android/ui/fragments/x;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->Y:Ljava/lang/Runnable;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->h:Landroid/os/Handler;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/x;->Y:Ljava/lang/Runnable;
const-wide/16 v3, 0x3e8
invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/x;->a()V
:cond_8f
return-object v1
:cond_90
const-string v0, " (using retained webview)"
goto/16 :goto_d
:cond_94
new-instance v2, Landroid/webkit/WebView;
invoke-direct {v2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
iput-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/x;->a:Landroid/webkit/WebView;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->a:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v0
invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->a:Landroid/webkit/WebView;
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/x$3;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/fragments/x$3;-><init>(Lcom/spotify/mobile/android/ui/fragments/x;)V
invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
new-instance v0, Lcom/spotify/mobile/android/util/webview/b;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/x;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-direct {v0, v2}, Lcom/spotify/mobile/android/util/webview/b;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->ad:Lcom/spotify/mobile/android/util/webview/b;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/x$4;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/x;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-direct {v0, p0, v2}, Lcom/spotify/mobile/android/ui/fragments/x$4;-><init>(Lcom/spotify/mobile/android/ui/fragments/x;Landroid/content/Context;)V
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/x;->ad:Lcom/spotify/mobile/android/util/webview/b;
sget-object v3, Lcom/spotify/mobile/android/util/webview/action/WebActionType;->a:Lcom/spotify/mobile/android/util/webview/action/WebActionType;
invoke-virtual {v2, v3, v0}, Lcom/spotify/mobile/android/util/webview/b;->a(Lcom/spotify/mobile/android/util/webview/action/WebActionType;Lcom/spotify/mobile/android/util/webview/action/b;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->a:Landroid/webkit/WebView;
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/x$5;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/fragments/x$5;-><init>(Lcom/spotify/mobile/android/ui/fragments/x;)V
invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
goto/16 :goto_3b
.end method
.method protected abstract a()V
.end method
.method protected a(Ljava/lang/String;)V
.registers 2
return-void
.end method
.method protected a(Landroid/net/Uri;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method protected final c(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->h:Landroid/os/Handler;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/x;->Y:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->Z:I
if-eqz v0, :cond_10
iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->Z:I
const/4 v1, 0x1
if-ne v0, v1, :cond_1d
:cond_10
const/4 v0, 0x2
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/x;->c(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->a:Landroid/webkit/WebView;
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->a:Landroid/webkit/WebView;
invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
:cond_1d
return-void
.end method
.method public final f()V
.registers 4
const/4 v2, 0x0
const-string v0, "onDestroyView()"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-super {p0}, Landroid/support/v4/app/Fragment;->f()V
iput-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/x;->b:Landroid/view/View;
iput-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/x;->d:Landroid/widget/TextView;
iput-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/x;->e:Landroid/widget/TextView;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->a:Landroid/webkit/WebView;
if-eqz v0, :cond_31
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/x;->t()Z
move-result v0
if-eqz v0, :cond_2f
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->a:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;
move-result-object v0
if-eqz v0, :cond_2f
check-cast v0, Landroid/view/ViewGroup;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/x;->a:Landroid/webkit/WebView;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->a:Landroid/webkit/WebView;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->g:Landroid/webkit/WebView;
:cond_2f
iput-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/x;->a:Landroid/webkit/WebView;
:cond_31
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->f:Landroid/app/AlertDialog;
if-eqz v0, :cond_3c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->f:Landroid/app/AlertDialog;
invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V
iput-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/x;->f:Landroid/app/AlertDialog;
:cond_3c
return-void
.end method
.method public z()V
.registers 4
const/4 v2, 0x0
invoke-super {p0}, Landroid/support/v4/app/Fragment;->z()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->a:Landroid/webkit/WebView;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->a:Landroid/webkit/WebView;
invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->a:Landroid/webkit/WebView;
invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
iput-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/x;->a:Landroid/webkit/WebView;
:cond_14
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->Y:Ljava/lang/Runnable;
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x;->h:Landroid/os/Handler;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/x;->Y:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iput-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/x;->Y:Ljava/lang/Runnable;
:cond_21
return-void
.end method