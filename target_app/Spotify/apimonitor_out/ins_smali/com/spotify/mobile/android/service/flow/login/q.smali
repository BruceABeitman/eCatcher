.class public Lcom/spotify/mobile/android/service/flow/login/q;
.super Lcom/spotify/mobile/android/service/flow/login/o;
.source "SourceFile"
.field private Y:Landroid/widget/TextView$OnEditorActionListener;
.field private Z:Landroid/text/TextWatcher;
.field private a:Lcom/spotify/mobile/android/util/dw;
.field private b:Landroid/view/View;
.field private c:Landroid/widget/Button;
.field private d:Landroid/widget/EditText;
.field private e:Landroid/widget/EditText;
.field private f:Landroid/widget/TextView;
.field private g:Lcom/spotify/mobile/android/ui/actions/c;
.field private h:Landroid/view/View;
.field private i:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/o;-><init>()V
const-class v0, Lcom/spotify/mobile/android/ui/actions/c;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/c;
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/q;->g:Lcom/spotify/mobile/android/ui/actions/c;
new-instance v0, Lcom/spotify/mobile/android/service/flow/login/q$6;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/flow/login/q$6;-><init>(Lcom/spotify/mobile/android/service/flow/login/q;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/q;->Y:Landroid/widget/TextView$OnEditorActionListener;
new-instance v0, Lcom/spotify/mobile/android/service/flow/login/q$7;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/flow/login/q$7;-><init>(Lcom/spotify/mobile/android/service/flow/login/q;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/q;->Z:Landroid/text/TextWatcher;
return-void
.end method
.method private E()V
.registers 4
new-instance v0, Lcom/spotify/mobile/android/service/flow/login/s;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/s;-><init>(B)V
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/q;->d:Landroid/widget/EditText;
invoke-static {v1}, Lcom/spotify/mobile/android/util/dl;->a(Landroid/widget/TextView;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/spotify/mobile/android/service/flow/login/s;->a:Ljava/lang/String;
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/q;->e:Landroid/widget/EditText;
invoke-static {v1}, Lcom/spotify/mobile/android/util/dl;->a(Landroid/widget/TextView;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/spotify/mobile/android/service/flow/login/s;->b:Ljava/lang/String;
iget-object v1, v0, Lcom/spotify/mobile/android/service/flow/login/s;->a:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
if-nez v2, :cond_2f
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/q;->d:Landroid/widget/EditText;
const v1, 0x7f0f025f
invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/service/flow/login/q;->b(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
:goto_2e
return-void
:cond_2f
iget-object v2, v0, Lcom/spotify/mobile/android/service/flow/login/s;->b:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-nez v2, :cond_44
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/q;->e:Landroid/widget/EditText;
const v1, 0x7f0f0253
invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/service/flow/login/q;->b(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
goto :goto_2e
:cond_44
const v2, 0x7f0f0258
invoke-direct {p0, v2}, Lcom/spotify/mobile/android/service/flow/login/q;->d(I)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/q;->D()Lcom/spotify/mobile/android/service/flow/login/r;
move-result-object v2
iget-object v0, v0, Lcom/spotify/mobile/android/service/flow/login/s;->b:Ljava/lang/String;
invoke-interface {v2, v1, v0}, Lcom/spotify/mobile/android/service/flow/login/r;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2e
.end method
.method static synthetic a(Lcom/spotify/mobile/android/service/flow/login/q;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/q;->h:Landroid/view/View;
return-object v0
.end method
.method public static a(Lcom/spotify/mobile/android/service/flow/logic/d;)Lcom/spotify/mobile/android/service/flow/login/q;
.registers 2
new-instance v0, Lcom/spotify/mobile/android/service/flow/login/q;
invoke-direct {v0}, Lcom/spotify/mobile/android/service/flow/login/q;-><init>()V
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/flow/a;->a(Landroid/support/v4/app/Fragment;)V
return-object v0
.end method
.method public static a(Lcom/spotify/mobile/android/service/flow/logic/d;Ljava/lang/String;)Lcom/spotify/mobile/android/service/flow/login/q;
.registers 4
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "userName"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/spotify/mobile/android/service/flow/login/q;
invoke-direct {v1}, Lcom/spotify/mobile/android/service/flow/login/q;-><init>()V
invoke-virtual {v1, p0}, Lcom/spotify/mobile/android/service/flow/a;->a(Landroid/support/v4/app/Fragment;)V
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/flow/login/q;->c_(Landroid/os/Bundle;)V
return-object v1
.end method
.method static synthetic b(Lcom/spotify/mobile/android/service/flow/login/q;)V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/q;->E()V
return-void
.end method
.method static synthetic c(Lcom/spotify/mobile/android/service/flow/login/q;)Landroid/widget/EditText;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/q;->d:Landroid/widget/EditText;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/service/flow/login/q;)Landroid/widget/Button;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/q;->c:Landroid/widget/Button;
return-object v0
.end method
.method private d(I)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/q;->c:Landroid/widget/Button;
if-nez v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/q;->c:Landroid/widget/Button;
invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/q;->c:Landroid/widget/Button;
if-eqz v1, :cond_4
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/q;->c:Landroid/widget/Button;
invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
goto :goto_4
.end method
.method public final D()Lcom/spotify/mobile/android/service/flow/login/r;
.registers 2
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/a;->q_()Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/flow/logic/d;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/flow/logic/d;->a(Lcom/spotify/mobile/android/service/flow/a;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/flow/login/r;
return-object v0
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 7
const v0, 0x7f03006a
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
const v1, 0x7f0a02a6
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-static {v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/view/View;
iput-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/q;->b:Landroid/view/View;
const v1, 0x7f0a02ac
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-static {v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/widget/Button;
iput-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/q;->c:Landroid/widget/Button;
const v1, 0x7f0a02aa
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-static {v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/widget/EditText;
iput-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/q;->d:Landroid/widget/EditText;
const v1, 0x7f0a02ab
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-static {v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/widget/EditText;
iput-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/q;->e:Landroid/widget/EditText;
const v1, 0x7f0a02ad
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-static {v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iput-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/q;->f:Landroid/widget/TextView;
const v1, 0x7f0a02a8
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-static {v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/view/View;
iput-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/q;->h:Landroid/view/View;
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/q;->h:Landroid/view/View;
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
const-class v1, Lcom/spotify/mobile/android/service/flow/login/g;
invoke-static {v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v1
check-cast v1, Lcom/spotify/mobile/android/service/flow/login/g;
new-instance v2, Lcom/spotify/mobile/android/service/flow/login/q$1;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/service/flow/login/q$1;-><init>(Lcom/spotify/mobile/android/service/flow/login/q;)V
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/service/flow/login/g;->a(Lcom/spotify/mobile/android/service/flow/login/k;)V
return-object v0
.end method
.method public final a(IILandroid/content/Intent;)V
.registers 8
const/4 v0, 0x1
if-ne v0, p1, :cond_19
const/4 v0, -0x1
if-ne p2, v0, :cond_19
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/q;->g:Lcom/spotify/mobile/android/ui/actions/c;
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/q;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/q;->a:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v2}, Lcom/spotify/mobile/android/util/dw;->c()Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/actions/c;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Z)V
invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/q;->E()V
:cond_19
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Lcom/spotify/mobile/android/service/flow/login/o;->a(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/q;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->Y:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dy;->b(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/q;->a:Lcom/spotify/mobile/android/util/dw;
return-void
.end method
.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
.registers 6
invoke-super {p0, p1, p2}, Lcom/spotify/mobile/android/service/flow/login/o;->a(Landroid/view/View;Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/q;->b:Landroid/view/View;
new-instance v1, Lcom/spotify/mobile/android/service/flow/login/q$2;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/flow/login/q$2;-><init>(Lcom/spotify/mobile/android/service/flow/login/q;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/q;->e:Landroid/widget/EditText;
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/q;->Y:Landroid/widget/TextView$OnEditorActionListener;
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/q;->c:Landroid/widget/Button;
new-instance v1, Lcom/spotify/mobile/android/service/flow/login/q$3;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/flow/login/q$3;-><init>(Lcom/spotify/mobile/android/service/flow/login/q;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/q;->f:Landroid/widget/TextView;
new-instance v1, Lcom/spotify/mobile/android/service/flow/login/q$4;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/flow/login/q$4;-><init>(Lcom/spotify/mobile/android/service/flow/login/q;)V
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/q;->h()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_39
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/q;->d:Landroid/widget/EditText;
const-string v2, "userName"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
:cond_39
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/q;->h:Landroid/view/View;
new-instance v1, Lcom/spotify/mobile/android/service/flow/login/q$5;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/flow/login/q$5;-><init>(Lcom/spotify/mobile/android/service/flow/login/q;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/service/flow/login/p;)V
.registers 4
invoke-super {p0, p1}, Lcom/spotify/mobile/android/service/flow/login/o;->a(Lcom/spotify/mobile/android/service/flow/login/p;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/q;->c:Landroid/widget/Button;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/q;->b:Landroid/view/View;
if-nez v0, :cond_c
:cond_b
:goto_b
return-void
:cond_c
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/flow/login/p;->c()Z
move-result v0
if-eqz v0, :cond_25
const v0, 0x7f0f0258
:goto_15
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/service/flow/login/q;->d(I)V
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/q;->b:Landroid/view/View;
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/flow/login/p;->c()Z
move-result v0
if-nez v0, :cond_29
const/4 v0, 0x1
:goto_21
invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V
goto :goto_b
:cond_25
const v0, 0x7f0f0259
goto :goto_15
:cond_29
const/4 v0, 0x0
goto :goto_21
.end method
.method protected final a(Lcom/spotify/mobile/android/util/SpotifyError;)V
.registers 6
const/4 v3, 0x1
invoke-super {p0, p1}, Lcom/spotify/mobile/android/service/flow/login/o;->a(Lcom/spotify/mobile/android/util/SpotifyError;)V
const v0, 0x7f0f0259
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/service/flow/login/q;->d(I)V
sget-object v0, Lcom/spotify/mobile/android/util/SpotifyError;->H:Lcom/spotify/mobile/android/util/SpotifyError;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/SpotifyError;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_21
new-instance v0, Landroid/content/Intent;
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/q;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const-class v2, Lcom/spotify/mobile/android/ui/activity/DisableOfflineModeActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0, v0, v3}, Lcom/spotify/mobile/android/service/flow/login/q;->a(Landroid/content/Intent;I)V
:goto_20
return-void
:cond_21
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/q;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/spotify/mobile/android/util/SpotifyError;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/q;->i:Ljava/lang/String;
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/q;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/q;->i:Ljava/lang/String;
invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
goto :goto_20
.end method
.method public final x()V
.registers 3
invoke-super {p0}, Lcom/spotify/mobile/android/service/flow/login/o;->x()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/q;->d:Landroid/widget/EditText;
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/q;->Z:Landroid/text/TextWatcher;
invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/q;->a:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V
return-void
.end method
.method public final y()V
.registers 3
invoke-super {p0}, Lcom/spotify/mobile/android/service/flow/login/o;->y()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/q;->d:Landroid/widget/EditText;
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/q;->Z:Landroid/text/TextWatcher;
invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/q;->a:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V
return-void
.end method