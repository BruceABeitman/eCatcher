.class public final Lcom/instagram/android/login/fragment/ad;
.super Lcom/instagram/base/a/b;
.source "PhoneNumberEntryFragment.java"
.implements Lcom/instagram/a/b;
.implements Lcom/instagram/android/e/a;
.implements Lcom/instagram/android/login/fragment/cv;
.field private a:Lcom/instagram/common/n/a;
.field private b:Lcom/facebook/i/d;
.field private c:Lcom/instagram/ui/widget/refresh/RefreshButton;
.field private d:Landroid/widget/EditText;
.field private e:Landroid/widget/TextView;
.field private f:Landroid/widget/TextView;
.field private g:Ljava/lang/String;
.field private final h:Landroid/os/Handler;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/instagram/android/login/fragment/ad;->h:Landroid/os/Handler;
return-void
.end method
.method private U()V
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->D()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/instagram/android/login/fragment/ad;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->j()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_a
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->j()Landroid/os/Bundle;
move-result-object v0
const-string v1, "com.instagram.android.login.fragment.PhoneNumberEntryFragment.ARGUMENT_IS_SMS_RESET_FLOW"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_a
iget-object v1, p0, Lcom/instagram/android/login/fragment/ad;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;
invoke-direct {p0}, Lcom/instagram/android/login/fragment/ad;->Z()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_2e
const/4 v0, 0x1
:goto_2a
invoke-virtual {v1, v0}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setEnabled(Z)V
goto :goto_a
:cond_2e
const/4 v0, 0x0
goto :goto_2a
.end method
.method private V()V
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;
move-result-object v0
check-cast v0, Lcom/instagram/android/activity/MainTabActivity;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Lcom/instagram/android/activity/MainTabActivity;->a(I)V
return-void
.end method
.method private W()V
.registers 6
const/4 v4, 0x0
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->j()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_61
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->j()Landroid/os/Bundle;
move-result-object v0
const-string v1, "com.instagram.android.login.fragment.PhoneNumberEntryFragment.ARGUMENT_IS_EDIT_PROFILE_FLOW"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_61
invoke-direct {p0}, Lcom/instagram/android/login/fragment/ad;->Z()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_47
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "new_phone_number"
const-string v2, ""
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->p()Landroid/support/v4/app/s;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/support/v4/app/s;->b(Ljava/lang/String;)V
new-instance v1, Lcom/instagram/base/a/a/a;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->p()Landroid/support/v4/app/s;
move-result-object v2
invoke-direct {v1, v2}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V
new-instance v2, Lcom/instagram/android/fragment/ab;
invoke-direct {v2}, Lcom/instagram/android/fragment/ab;-><init>()V
invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
:goto_46
return-void
:cond_47
new-instance v0, Lcom/instagram/android/c/a/s;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->l()Landroid/support/v4/app/k;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->y()Landroid/support/v4/app/an;
move-result-object v2
new-instance v3, Lcom/instagram/android/login/fragment/al;
invoke-direct {v3, p0, v4}, Lcom/instagram/android/login/fragment/al;-><init>(Lcom/instagram/android/login/fragment/ad;B)V
invoke-direct {p0}, Lcom/instagram/android/login/fragment/ad;->Y()Ljava/lang/String;
move-result-object v4
invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/c/a/s;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/instagram/android/c/a/s;->h()V
goto :goto_46
:cond_61
new-instance v0, Lcom/instagram/android/login/c/l;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->n()Landroid/content/Context;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->y()Landroid/support/v4/app/an;
move-result-object v2
new-instance v3, Lcom/instagram/android/login/fragment/aj;
invoke-direct {v3, p0, v4}, Lcom/instagram/android/login/fragment/aj;-><init>(Lcom/instagram/android/login/fragment/ad;B)V
invoke-direct {p0}, Lcom/instagram/android/login/fragment/ad;->Y()Ljava/lang/String;
move-result-object v4
invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/login/c/l;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/instagram/android/login/c/l;->h()V
goto :goto_46
.end method
.method private X()Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/instagram/android/login/fragment/ad;->a:Lcom/instagram/common/n/a;
invoke-virtual {v0}, Lcom/instagram/common/n/a;->a()Ljava/lang/String;
move-result-object v0
sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_2c
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "+"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/instagram/android/login/fragment/ad;->b:Lcom/facebook/i/d;
invoke-virtual {v2, v0}, Lcom/facebook/i/d;->a(Ljava/lang/String;)I
move-result v0
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_2b
return-object v0
:cond_2c
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "+"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/instagram/android/login/fragment/ad;->b:Lcom/facebook/i/d;
const-string v2, "US"
invoke-virtual {v1, v2}, Lcom/facebook/i/d;->a(Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_2b
.end method
.method private Y()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-direct {p0}, Lcom/instagram/android/login/fragment/ad;->aa()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-direct {p0}, Lcom/instagram/android/login/fragment/ad;->Z()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private Z()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/ad;->d:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic a(Lcom/instagram/android/login/fragment/ad;)Landroid/widget/EditText;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/ad;->d:Landroid/widget/EditText;
return-object v0
.end method
.method static synthetic a(Lcom/instagram/android/login/fragment/ad;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/instagram/android/login/fragment/ad;->g:Ljava/lang/String;
return-object p1
.end method
.method private aa()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/ad;->e:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic b(Lcom/instagram/android/login/fragment/ad;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/ad;->f:Landroid/widget/TextView;
return-object v0
.end method
.method private c()V
.registers 4
iget-object v0, p0, Lcom/instagram/android/login/fragment/ad;->d:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->l()Landroid/support/v4/app/k;
move-result-object v0
const-string v1, "input_method"
invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
iget-object v1, p0, Lcom/instagram/android/login/fragment/ad;->d:Landroid/widget/EditText;
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
return-void
.end method
.method static synthetic c(Lcom/instagram/android/login/fragment/ad;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/login/fragment/ad;->U()V
return-void
.end method
.method static synthetic d(Lcom/instagram/android/login/fragment/ad;)Lcom/instagram/ui/widget/refresh/RefreshButton;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/ad;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;
return-object v0
.end method
.method private d()V
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->D()Landroid/view/View;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/common/u/f;->a(Landroid/content/Context;Landroid/view/View;)V
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;
move-result-object v0
const/4 v1, 0x3
invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V
return-void
.end method
.method static synthetic e(Lcom/instagram/android/login/fragment/ad;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/login/fragment/ad;->W()V
return-void
.end method
.method static synthetic f(Lcom/instagram/android/login/fragment/ad;)Ljava/lang/String;
.registers 2
invoke-direct {p0}, Lcom/instagram/android/login/fragment/ad;->Y()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic g(Lcom/instagram/android/login/fragment/ad;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/ad;->h:Landroid/os/Handler;
return-object v0
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 7
sget v0, Lcom/facebook/aw;->fragment_phone_number_entry:I
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
sget v0, Lcom/facebook/av;->country_code_picker:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/instagram/android/login/fragment/ad;->e:Landroid/widget/TextView;
sget v0, Lcom/facebook/av;->phone_number:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/instagram/android/login/fragment/ad;->d:Landroid/widget/EditText;
iget-object v0, p0, Lcom/instagram/android/login/fragment/ad;->d:Landroid/widget/EditText;
new-instance v2, Landroid/telephony/PhoneNumberFormattingTextWatcher;
invoke-direct {v2}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>()V
invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
sget v0, Lcom/facebook/av;->clear_phone_text:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/instagram/android/login/fragment/ad;->f:Landroid/widget/TextView;
iget-object v0, p0, Lcom/instagram/android/login/fragment/ad;->f:Landroid/widget/TextView;
new-instance v2, Lcom/instagram/android/login/fragment/ae;
invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/ae;-><init>(Lcom/instagram/android/login/fragment/ad;)V
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/ad;->d:Landroid/widget/EditText;
new-instance v2, Lcom/instagram/android/login/fragment/af;
invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/af;-><init>(Lcom/instagram/android/login/fragment/ad;)V
invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->j()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_6f
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->j()Landroid/os/Bundle;
move-result-object v0
const-string v2, "com.instagram.android.login.fragment.PhoneNumberEntryFragment.ARGUMENT_COUNTRY_CODE"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_aa
invoke-direct {p0}, Lcom/instagram/android/login/fragment/ad;->X()Ljava/lang/String;
move-result-object v0
:goto_5d
invoke-virtual {p0, v0}, Lcom/instagram/android/login/fragment/ad;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/ad;->d:Landroid/widget/EditText;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->j()Landroid/os/Bundle;
move-result-object v2
const-string v3, "com.instagram.android.login.fragment.PhoneNumberEntryFragment.ARGUMENT_NATIONAL_NUMBER"
invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
:cond_6f
iget-object v0, p0, Lcom/instagram/android/login/fragment/ad;->e:Landroid/widget/TextView;
new-instance v2, Lcom/instagram/android/login/fragment/ag;
invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/ag;-><init>(Lcom/instagram/android/login/fragment/ad;)V
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/ad;->d:Landroid/widget/EditText;
new-instance v2, Lcom/instagram/android/login/fragment/ah;
invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/ah;-><init>(Lcom/instagram/android/login/fragment/ad;)V
invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->j()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_a0
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->j()Landroid/os/Bundle;
move-result-object v0
const-string v2, "com.instagram.android.login.fragment.PhoneNumberEntryFragment.ARGUMENT_IS_EDIT_PROFILE_FLOW"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_a0
sget v0, Lcom/facebook/av;->instructions_container:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
const/16 v2, 0x8
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
:cond_a0
invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;
move-result-object v0
iget-object v2, p0, Lcom/instagram/android/login/fragment/ad;->d:Landroid/widget/EditText;
invoke-interface {v0, v2}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V
return-object v1
:cond_aa
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "+"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_5d
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->n()Landroid/content/Context;
move-result-object v0
const-string v1, "phone"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/telephony/TelephonyManager;
new-instance v1, Lcom/instagram/common/n/a;
invoke-direct {v1, v0}, Lcom/instagram/common/n/a;-><init>(Landroid/telephony/TelephonyManager;)V
iput-object v1, p0, Lcom/instagram/android/login/fragment/ad;->a:Lcom/instagram/common/n/a;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->n()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/facebook/i/d;->a(Landroid/content/Context;)Lcom/facebook/i/d;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/login/fragment/ad;->b:Lcom/facebook/i/d;
return-void
.end method
.method public final a(Lcom/instagram/a/a;)V
.registers 4
sget v0, Lcom/facebook/az;->phone_number:I
new-instance v1, Lcom/instagram/android/login/fragment/ai;
invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/ai;-><init>(Lcom/instagram/android/login/fragment/ad;)V
invoke-interface {p1, v0, v1}, Lcom/instagram/a/a;->c(ILandroid/view/View$OnClickListener;)Lcom/instagram/ui/widget/refresh/RefreshButton;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/login/fragment/ad;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;
iget-object v0, p0, Lcom/instagram/android/login/fragment/ad;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;
sget v1, Lcom/facebook/au;->nav_arrow_next:I
invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setButtonResource(I)V
invoke-direct {p0}, Lcom/instagram/android/login/fragment/ad;->U()V
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/login/fragment/ad;->e:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method public final b()V
.registers 4
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->p()Landroid/support/v4/app/s;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/support/v4/app/s;->b(Ljava/lang/String;)V
const-string v1, "new_phone_number"
iget-object v2, p0, Lcom/instagram/android/login/fragment/ad;->g:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/instagram/base/a/a/a;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->p()Landroid/support/v4/app/s;
move-result-object v2
invoke-direct {v1, v2}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V
new-instance v2, Lcom/instagram/android/fragment/ab;
invoke-direct {v2}, Lcom/instagram/android/fragment/ab;-><init>()V
invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
return-void
.end method
.method public final i_()Ljava/lang/String;
.registers 2
const-string v0, "phone_number_entry"
return-object v0
.end method
.method public final j_()V
.registers 3
invoke-direct {p0}, Lcom/instagram/android/login/fragment/ad;->c()V
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->j()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_18
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->j()Landroid/os/Bundle;
move-result-object v0
const-string v1, "com.instagram.android.login.fragment.PhoneNumberEntryFragment.ARGUMENT_IS_EDIT_PROFILE_FLOW"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_18
invoke-direct {p0}, Lcom/instagram/android/login/fragment/ad;->V()V
:cond_18
invoke-super {p0}, Lcom/instagram/base/a/b;->j_()V
return-void
.end method
.method public final k_()V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/login/fragment/ad;->d()V
invoke-super {p0}, Lcom/instagram/base/a/b;->k_()V
return-void
.end method
.method public final l_()V
.registers 3
invoke-super {p0}, Lcom/instagram/base/a/b;->l_()V
invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/login/fragment/ad;->d:Landroid/widget/EditText;
invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/android/login/fragment/ad;->d:Landroid/widget/EditText;
return-void
.end method