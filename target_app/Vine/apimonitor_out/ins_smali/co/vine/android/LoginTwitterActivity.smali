.class public Lco/vine/android/LoginTwitterActivity;
.super Lco/vine/android/BaseControllerActionBarActivity;
.source "LoginTwitterActivity.java"
.implements Landroid/text/TextWatcher;
.implements Lco/vine/android/widget/SpanClickListener;
.implements Lco/vine/android/widgets/PromptDialogSupportFragment$OnDialogDoneListener;
.field private static final DIALOG_ACTIVATE_ACCOUNT:I = 0x1
.field public static final EXTRA_FINISH:Ljava/lang/String; = "finish"
.field public static final EXTRA_SCREEN_NAME:Ljava/lang/String; = "screen_name"
.field public static final EXTRA_SECRET:Ljava/lang/String; = "secret"
.field public static final EXTRA_TOKEN:Ljava/lang/String; = "token"
.field public static final EXTRA_USER_ID:Ljava/lang/String; = "user_id"
.field private static final SPAN_VINE_PP:I = 0x1
.field private static final SPAN_VINE_TOS:I = 0x2
.field private static final STATE_VINE_LOGIN:Ljava/lang/String; = "vine_login"
.field private mFinish:Z
.field private mPassword:Landroid/widget/EditText;
.field private mSignIn:Landroid/view/MenuItem;
.field private mUsername:Landroid/widget/EditText;
.field private mVineLogin:Lco/vine/android/api/VineLogin;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lco/vine/android/BaseControllerActionBarActivity;-><init>()V
return-void
.end method
.method static synthetic access$000(Lco/vine/android/LoginTwitterActivity;Z)V
.registers 2
invoke-direct {p0, p1}, Lco/vine/android/LoginTwitterActivity;->login(Z)V
return-void
.end method
.method static synthetic access$100(Lco/vine/android/LoginTwitterActivity;)Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/LoginTwitterActivity;->mFinish:Z
return v0
.end method
.method static synthetic access$202(Lco/vine/android/LoginTwitterActivity;Lco/vine/android/api/VineLogin;)Lco/vine/android/api/VineLogin;
.registers 2
iput-object p1, p0, Lco/vine/android/LoginTwitterActivity;->mVineLogin:Lco/vine/android/api/VineLogin;
return-object p1
.end method
.method public static getIntent(Landroid/content/Context;)Landroid/content/Intent;
.registers 3
new-instance v0, Landroid/content/Intent;
const-class v1, Lco/vine/android/LoginTwitterActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
return-object v0
.end method
.method public static getIntentWithFinish(Landroid/content/Context;)Landroid/content/Intent;
.registers 4
new-instance v0, Landroid/content/Intent;
const-class v1, Lco/vine/android/LoginTwitterActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "finish"
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
return-object v0
.end method
.method private login(Z)V
.registers 11
invoke-direct {p0}, Lco/vine/android/LoginTwitterActivity;->validate()Z
move-result v0
if-eqz v0, :cond_3c
new-instance v7, Landroid/app/ProgressDialog;
const v0, 0x7f0f0037
invoke-direct {v7, p0, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V
const v0, 0x7f0e021d
invoke-virtual {p0, v0}, Lco/vine/android/LoginTwitterActivity;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v7, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
const/4 v0, 0x0
invoke-virtual {v7, v0}, Landroid/app/ProgressDialog;->setProgress(I)V
:try_start_1c
invoke-virtual {v7}, Landroid/app/ProgressDialog;->show()V
:goto_1f
:try_end_1f
.catch Landroid/view/WindowManager$BadTokenException; {:try_start_1c .. :try_end_1f} :catch_59
iput-object v7, p0, Lco/vine/android/LoginTwitterActivity;->mProgressDialog:Landroid/app/ProgressDialog;
if-nez p1, :cond_3d
iget-object v0, p0, Lco/vine/android/LoginTwitterActivity;->mAppController:Lco/vine/android/client/AppController;
iget-object v1, p0, Lco/vine/android/LoginTwitterActivity;->mUsername:Landroid/widget/EditText;
invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lco/vine/android/LoginTwitterActivity;->mPassword:Landroid/widget/EditText;
invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lco/vine/android/client/AppController;->loginWithxAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
:goto_3c
:cond_3c
return-void
:cond_3d
iget-object v0, p0, Lco/vine/android/LoginTwitterActivity;->mVineLogin:Lco/vine/android/api/VineLogin;
if-eqz v0, :cond_52
iget-object v8, p0, Lco/vine/android/LoginTwitterActivity;->mVineLogin:Lco/vine/android/api/VineLogin;
iget-object v0, p0, Lco/vine/android/LoginTwitterActivity;->mAppController:Lco/vine/android/client/AppController;
iget-object v1, v8, Lco/vine/android/api/VineLogin;->twitterUsername:Ljava/lang/String;
iget-object v2, v8, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;
iget-object v3, v8, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;
iget-wide v4, v8, Lco/vine/android/api/VineLogin;->twitterUserId:J
const/4 v6, 0x1
invoke-virtual/range {v0 .. v6}, Lco/vine/android/client/AppController;->loginCheckTwitter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Ljava/lang/String;
goto :goto_3c
:cond_52
const v0, 0x7f0e00d0
invoke-static {p0, v0}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V
goto :goto_3c
:catch_59
move-exception v0
goto :goto_1f
.end method
.method private validate()Z
.registers 3
const/4 v0, 0x1
iget-object v1, p0, Lco/vine/android/LoginTwitterActivity;->mUsername:Landroid/widget/EditText;
invoke-virtual {v1}, Landroid/widget/EditText;->length()I
move-result v1
if-lt v1, v0, :cond_12
iget-object v1, p0, Lco/vine/android/LoginTwitterActivity;->mPassword:Landroid/widget/EditText;
invoke-virtual {v1}, Landroid/widget/EditText;->length()I
move-result v1
if-lt v1, v0, :cond_12
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public afterTextChanged(Landroid/text/Editable;)V
.registers 2
return-void
.end method
.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 15
const-string v1, " + Lco/vine/android/LoginTwitterActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v9, 0x7f0300aa
const/4 v10, 0x0
invoke-super {p0, p1, v9, v10}, Lco/vine/android/BaseControllerActionBarActivity;->onCreate(Landroid/os/Bundle;IZ)V
const/4 v9, 0x1
invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v9
const/4 v10, 0x1
invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v10
const v11, 0x7f0e012b
const/4 v12, 0x1
invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v12
invoke-virtual {p0, v9, v10, v11, v12}, Lco/vine/android/LoginTwitterActivity;->setupActionBar(Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Boolean;)V
const v9, 0x7f0a0115
invoke-virtual {p0, v9}, Lco/vine/android/LoginTwitterActivity;->findViewById(I)Landroid/view/View;
move-result-object v9
check-cast v9, Landroid/widget/EditText;
iput-object v9, p0, Lco/vine/android/LoginTwitterActivity;->mUsername:Landroid/widget/EditText;
iget-object v9, p0, Lco/vine/android/LoginTwitterActivity;->mUsername:Landroid/widget/EditText;
invoke-static {p0}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;
move-result-object v10
const/4 v11, 0x0
const/4 v12, 0x2
invoke-virtual {v10, v11, v12}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;
move-result-object v10
invoke-virtual {v9, v10}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V
iget-object v9, p0, Lco/vine/android/LoginTwitterActivity;->mUsername:Landroid/widget/EditText;
invoke-virtual {v9, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
const v9, 0x7f0a0118
invoke-virtual {p0, v9}, Lco/vine/android/LoginTwitterActivity;->findViewById(I)Landroid/view/View;
move-result-object v9
check-cast v9, Landroid/widget/EditText;
iput-object v9, p0, Lco/vine/android/LoginTwitterActivity;->mPassword:Landroid/widget/EditText;
iget-object v9, p0, Lco/vine/android/LoginTwitterActivity;->mPassword:Landroid/widget/EditText;
invoke-static {p0}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;
move-result-object v10
const/4 v11, 0x0
const/4 v12, 0x2
invoke-virtual {v10, v11, v12}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;
move-result-object v10
invoke-virtual {v9, v10}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V
iget-object v9, p0, Lco/vine/android/LoginTwitterActivity;->mPassword:Landroid/widget/EditText;
invoke-virtual {v9, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
iget-object v9, p0, Lco/vine/android/LoginTwitterActivity;->mPassword:Landroid/widget/EditText;
new-instance v10, Lco/vine/android/LoginTwitterActivity$1;
invoke-direct {v10, p0}, Lco/vine/android/LoginTwitterActivity$1;-><init>(Lco/vine/android/LoginTwitterActivity;)V
invoke-virtual {v9, v10}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
invoke-virtual {p0}, Lco/vine/android/LoginTwitterActivity;->getIntent()Landroid/content/Intent;
move-result-object v9
const-string v10, "finish"
const/4 v11, 0x0
invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v9
iput-boolean v9, p0, Lco/vine/android/LoginTwitterActivity;->mFinish:Z
new-instance v9, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;
invoke-direct {v9, p0}, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;-><init>(Lco/vine/android/LoginTwitterActivity;)V
iput-object v9, p0, Lco/vine/android/LoginTwitterActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;
const v9, 0x7f0a021e
invoke-virtual {p0, v9}, Lco/vine/android/LoginTwitterActivity;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/TextView;
const/4 v9, 0x2
new-array v0, v9, [Landroid/text/style/StyleSpan;
const/4 v9, 0x0
new-instance v10, Landroid/text/style/StyleSpan;
const/4 v11, 0x1
invoke-direct {v10, v11}, Landroid/text/style/StyleSpan;-><init>(I)V
aput-object v10, v0, v9
const/4 v9, 0x1
new-instance v10, Landroid/text/style/StyleSpan;
const/4 v11, 0x1
invoke-direct {v10, v11}, Landroid/text/style/StyleSpan;-><init>(I)V
aput-object v10, v0, v9
const v9, 0x7f0e012d
invoke-virtual {p0, v9}, Lco/vine/android/LoginTwitterActivity;->getString(I)Ljava/lang/String;
move-result-object v9
const/16 v10, 0x22
invoke-static {v0, v9, v10}, Lco/vine/android/util/Util;->getSpannedText([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;
move-result-object v6
invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;
move-result-object v9
invoke-virtual {v4, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v1
check-cast v1, Landroid/text/Spannable;
const/4 v9, 0x0
invoke-interface {v6}, Landroid/text/Spanned;->length()I
move-result v10
const-class v11, Landroid/text/style/StyleSpan;
invoke-interface {v6, v9, v10, v11}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
move-result-object v7
check-cast v7, [Landroid/text/style/StyleSpan;
invoke-virtual {p0}, Lco/vine/android/LoginTwitterActivity;->getResources()Landroid/content/res/Resources;
move-result-object v5
const/4 v9, 0x0
aget-object v9, v7, v9
invoke-interface {v6, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I
move-result v8
const/4 v9, 0x0
aget-object v9, v7, v9
invoke-interface {v6, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I
move-result v3
new-instance v2, Lco/vine/android/widget/StyledClickableSpan;
const/4 v9, 0x2
const/4 v10, 0x0
invoke-direct {v2, v9, v10, p0}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V
const v9, 0x7f09008d
invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I
move-result v9
invoke-virtual {v2, v9}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V
const/16 v9, 0x21
invoke-static {v1, v2, v8, v3, v9}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V
if-eqz p1, :cond_fc
const-string v9, "vine_login"
invoke-virtual {p1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v9
if-eqz v9, :cond_fc
const-string v9, "vine_login"
invoke-virtual {p1, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v9
check-cast v9, Lco/vine/android/api/VineLogin;
iput-object v9, p0, Lco/vine/android/LoginTwitterActivity;->mVineLogin:Lco/vine/android/api/VineLogin;
:cond_fc
const/4 v9, 0x1
aget-object v9, v7, v9
invoke-interface {v6, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I
move-result v8
const/4 v9, 0x1
aget-object v9, v7, v9
invoke-interface {v6, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I
move-result v3
new-instance v2, Lco/vine/android/widget/StyledClickableSpan;
const/4 v9, 0x1
const/4 v10, 0x0
invoke-direct {v2, v9, v10, p0}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V
const v9, 0x7f09008d
invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I
move-result v9
invoke-virtual {v2, v9}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V
const/16 v9, 0x21
invoke-static {v1, v2, v8, v3, v9}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V
const-string v1, " - Lco/vine/android/LoginTwitterActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/LoginTwitterActivity; onCreateOptionsMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p0}, Lco/vine/android/LoginTwitterActivity;->getMenuInflater()Landroid/view/MenuInflater;
move-result-object v0
const v1, 0x7f100008
invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
const v0, 0x7f0a0248
invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;
move-result-object v0
iput-object v0, p0, Lco/vine/android/LoginTwitterActivity;->mSignIn:Landroid/view/MenuItem;
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lco/vine/android/LoginTwitterActivity; onCreateOptionsMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method
.method public onDialogDone(Landroid/content/DialogInterface;II)V
.registers 5
packed-switch p2, :pswitch_data_e
:goto_3
return-void
:pswitch_4
packed-switch p3, :pswitch_data_14
goto :goto_3
:pswitch_8
const/4 v0, 0x1
invoke-direct {p0, v0}, Lco/vine/android/LoginTwitterActivity;->login(Z)V
goto :goto_3
nop
:pswitch_data_14
.packed-switch -0x1
:pswitch_8
.end packed-switch
:pswitch_data_e
.packed-switch 0x1
:pswitch_4
.end packed-switch
.end method
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/LoginTwitterActivity; onOptionsItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v0
packed-switch v0, :pswitch_data_12
invoke-super {p0, p1}, Lco/vine/android/BaseControllerActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
move-result v0
:goto_b
move v2, v0
const-string v1, " - Lco/vine/android/LoginTwitterActivity; onOptionsItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:pswitch_c
const/4 v0, 0x0
invoke-direct {p0, v0}, Lco/vine/android/LoginTwitterActivity;->login(Z)V
const/4 v0, 0x1
goto :goto_b
:pswitch_data_12
.packed-switch 0x7f0a0248
:pswitch_c
.end packed-switch
.end method
.method protected onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lco/vine/android/LoginTwitterActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lco/vine/android/BaseControllerActionBarActivity;->onSaveInstanceState(Landroid/os/Bundle;)V
iget-object v0, p0, Lco/vine/android/LoginTwitterActivity;->mVineLogin:Lco/vine/android/api/VineLogin;
if-eqz v0, :cond_e
const-string v0, "vine_login"
iget-object v1, p0, Lco/vine/android/LoginTwitterActivity;->mVineLogin:Lco/vine/android/api/VineLogin;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
:cond_e
const-string v1, " - Lco/vine/android/LoginTwitterActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSpanClicked(Landroid/view/View;ILjava/lang/Object;)V
.registers 7
new-instance v0, Landroid/content/Intent;
const-class v1, Lco/vine/android/WebViewActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
packed-switch p2, :pswitch_data_1c
:goto_a
return-void
:pswitch_b
const-string v1, "type"
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
:goto_11
invoke-virtual {p0, v0}, Lco/vine/android/LoginTwitterActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_a
:pswitch_15
const-string v1, "type"
const/4 v2, 0x2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
goto :goto_11
:pswitch_data_1c
.packed-switch 0x1
:pswitch_b
:pswitch_15
.end packed-switch
.end method
.method public onTextChanged(Ljava/lang/CharSequence;III)V
.registers 7
iget-object v0, p0, Lco/vine/android/LoginTwitterActivity;->mSignIn:Landroid/view/MenuItem;
if-eqz v0, :cond_d
iget-object v0, p0, Lco/vine/android/LoginTwitterActivity;->mSignIn:Landroid/view/MenuItem;
invoke-direct {p0}, Lco/vine/android/LoginTwitterActivity;->validate()Z
move-result v1
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
:cond_d
return-void
.end method