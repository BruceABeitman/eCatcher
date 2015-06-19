.class public Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"
.field final n:Landroid/view/View$OnClickListener;
.field final p:Landroid/view/View$OnClickListener;
.field private q:Lcom/spotify/mobile/android/ui/actions/a;
.field private r:Landroid/widget/EditText;
.field private s:Landroid/widget/EditText;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V
const-class v0, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->q:Lcom/spotify/mobile/android/ui/actions/a;
new-instance v0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog$2;-><init>(Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->n:Landroid/view/View$OnClickListener;
new-instance v0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog$3;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog$3;-><init>(Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->p:Landroid/view/View$OnClickListener;
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
.registers 4
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/high16 v1, 0x4000
invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
const/high16 v1, 0x1
invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
const-string v1, "intent_username"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;)Landroid/widget/EditText;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->s:Landroid/widget/EditText;
return-object v0
.end method
.method private a()V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->s:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->s:Landroid/widget/EditText;
const v2, 0x7f100083
invoke-static {v0, v1, v2}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;Landroid/widget/TextView;I)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;Landroid/widget/EditText;)V
.registers 4
invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_1c
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0900db
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHintTextColor(I)V
:cond_1c
return-void
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;)V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->a()V
return-void
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;)Lcom/spotify/mobile/android/ui/actions/a;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->q:Lcom/spotify/mobile/android/ui/actions/a;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;)Landroid/widget/EditText;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->r:Landroid/widget/EditText;
return-object v0
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 9
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v6, 0x0
const/4 v5, 0x1
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V
new-instance v0, Lcom/spotify/android/paste/widget/DialogLayout;
invoke-direct {v0, p0}, Lcom/spotify/android/paste/widget/DialogLayout;-><init>(Landroid/content/Context;)V
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->setContentView(Landroid/view/View;)V
const v1, 0x7f0f034b
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/DialogLayout;->a(I)V
new-instance v1, Landroid/widget/LinearLayout;
invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->getIntent()Landroid/content/Intent;
move-result-object v2
const-string v3, "intent_username"
invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {p0}, Lcom/spotify/android/paste/widget/h;->a(Landroid/content/Context;)Landroid/widget/EditText;
move-result-object v3
iput-object v3, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->r:Landroid/widget/EditText;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->r:Landroid/widget/EditText;
const v4, 0x7f0a01e8
invoke-virtual {v3, v4}, Landroid/widget/EditText;->setId(I)V
iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->r:Landroid/widget/EditText;
const/4 v4, 0x5
invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V
iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->r:Landroid/widget/EditText;
invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->r:Landroid/widget/EditText;
invoke-virtual {v2, v5}, Landroid/widget/EditText;->setFreezesText(Z)V
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->r:Landroid/widget/EditText;
invoke-virtual {v2, v5}, Landroid/widget/EditText;->setSingleLine(Z)V
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->r:Landroid/widget/EditText;
const v3, 0x7f0f034c
invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V
invoke-static {p0}, Lcom/spotify/android/paste/widget/h;->a(Landroid/content/Context;)Landroid/widget/EditText;
move-result-object v2
iput-object v2, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->s:Landroid/widget/EditText;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->s:Landroid/widget/EditText;
const v3, 0x7f0a01d5
invoke-virtual {v2, v3}, Landroid/widget/EditText;->setId(I)V
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->s:Landroid/widget/EditText;
const/4 v3, 0x6
invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->s:Landroid/widget/EditText;
const v3, 0x7f0f034a
invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->s:Landroid/widget/EditText;
invoke-virtual {v2, v5}, Landroid/widget/EditText;->setFreezesText(Z)V
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->s:Landroid/widget/EditText;
invoke-virtual {v2, v5}, Landroid/widget/EditText;->setSingleLine(Z)V
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->s:Landroid/widget/EditText;
const/16 v3, 0x81
invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->a()V
invoke-static {p0}, Lcom/spotify/android/paste/widget/h;->c(Landroid/content/Context;)Landroid/widget/CheckBox;
move-result-object v2
const v3, 0x7f0a01fe
invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setId(I)V
const v3, 0x7f0f0257
invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(I)V
new-instance v3, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog$1;
invoke-direct {v3, p0}, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog$1;-><init>(Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;)V
invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
new-instance v3, Landroid/widget/LinearLayout$LayoutParams;
const/4 v4, -0x1
const/4 v5, -0x2
invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
const/high16 v4, 0x4100
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->getResources()Landroid/content/res/Resources;
move-result-object v5
invoke-static {v4, v5}, Lcom/spotify/android/paste/graphics/e;->a(FLandroid/content/res/Resources;)I
move-result v4
invoke-virtual {v3, v6, v4, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->r:Landroid/widget/EditText;
invoke-virtual {v1, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->s:Landroid/widget/EditText;
invoke-virtual {v1, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/DialogLayout;->a(Landroid/view/View;)V
const v1, 0x7f0f03f3
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->n:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1, v2}, Lcom/spotify/android/paste/widget/DialogLayout;->a(ILandroid/view/View$OnClickListener;)V
const v1, 0x7f0f03f2
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->p:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1, v2}, Lcom/spotify/android/paste/widget/DialogLayout;->b(ILandroid/view/View$OnClickListener;)V
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->P:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->a(Lcom/spotify/mobile/android/util/dw;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method