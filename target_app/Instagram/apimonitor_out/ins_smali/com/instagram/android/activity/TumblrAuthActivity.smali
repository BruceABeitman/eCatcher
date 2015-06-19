.class public Lcom/instagram/android/activity/TumblrAuthActivity;
.super Lcom/instagram/android/activity/ab;
.source "TumblrAuthActivity.java"
.field private final q:Landroid/view/View$OnClickListener;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/instagram/android/activity/ab;-><init>()V
new-instance v0, Lcom/instagram/android/activity/v;
invoke-direct {v0, p0}, Lcom/instagram/android/activity/v;-><init>(Lcom/instagram/android/activity/TumblrAuthActivity;)V
iput-object v0, p0, Lcom/instagram/android/activity/TumblrAuthActivity;->q:Landroid/view/View$OnClickListener;
return-void
.end method
.method static synthetic a(Lcom/instagram/android/activity/TumblrAuthActivity;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/activity/TumblrAuthActivity;->j()V
return-void
.end method
.method static synthetic b(Lcom/instagram/android/activity/TumblrAuthActivity;)Ljava/lang/String;
.registers 2
invoke-direct {p0}, Lcom/instagram/android/activity/TumblrAuthActivity;->h()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static b(Landroid/support/v4/app/Fragment;)V
.registers 4
new-instance v0, Landroid/content/Intent;
invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->l()Landroid/support/v4/app/k;
move-result-object v1
const-class v2, Lcom/instagram/android/activity/TumblrAuthActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/4 v1, 0x3
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Intent;I)V
return-void
.end method
.method static synthetic c(Lcom/instagram/android/activity/TumblrAuthActivity;)Ljava/lang/String;
.registers 2
invoke-direct {p0}, Lcom/instagram/android/activity/TumblrAuthActivity;->i()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic d(Lcom/instagram/android/activity/TumblrAuthActivity;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/activity/TumblrAuthActivity;->k()V
return-void
.end method
.method private h()Ljava/lang/String;
.registers 3
const/4 v1, 0x0
sget v0, Lcom/facebook/av;->username:I
invoke-virtual {p0, v0}, Lcom/instagram/android/activity/TumblrAuthActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
if-eqz v0, :cond_14
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
:goto_13
return-object v0
:cond_14
move-object v0, v1
goto :goto_13
.end method
.method private i()Ljava/lang/String;
.registers 3
const/4 v1, 0x0
sget v0, Lcom/facebook/av;->password:I
invoke-virtual {p0, v0}, Lcom/instagram/android/activity/TumblrAuthActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
if-eqz v0, :cond_14
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
:goto_13
return-object v0
:cond_14
move-object v0, v1
goto :goto_13
.end method
.method private j()V
.registers 5
const/4 v3, 0x0
invoke-static {}, Lcom/instagram/ui/dialog/g;->V()Lcom/instagram/ui/dialog/g;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/android/activity/TumblrAuthActivity;->d()Landroid/support/v4/app/s;
move-result-object v1
const-string v2, "progressDialog"
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/g;->a(Landroid/support/v4/app/s;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/instagram/android/activity/TumblrAuthActivity;->e()Landroid/support/v4/app/an;
move-result-object v0
new-instance v1, Lcom/instagram/android/activity/x;
invoke-direct {v1, p0, v3}, Lcom/instagram/android/activity/x;-><init>(Lcom/instagram/android/activity/TumblrAuthActivity;B)V
invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/ao;)Landroid/support/v4/a/c;
return-void
.end method
.method private k()V
.registers 4
invoke-virtual {p0}, Lcom/instagram/android/activity/TumblrAuthActivity;->d()Landroid/support/v4/app/s;
move-result-object v0
const-string v1, "progressDialog"
invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Landroid/support/v4/app/f;
iget-object v1, p0, Lcom/instagram/android/activity/TumblrAuthActivity;->p:Landroid/os/Handler;
new-instance v2, Lcom/instagram/android/activity/w;
invoke-direct {v2, p0, v0}, Lcom/instagram/android/activity/w;-><init>(Lcom/instagram/android/activity/TumblrAuthActivity;Landroid/support/v4/app/f;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method protected final f()Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/activity/TumblrAuthActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/az;->tumblr:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected final g()V
.registers 5
const/4 v3, 0x0
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "deliverOnly"
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
invoke-virtual {p0}, Lcom/instagram/android/activity/TumblrAuthActivity;->e()Landroid/support/v4/app/an;
move-result-object v1
new-instance v2, Lcom/instagram/android/activity/x;
invoke-direct {v2, p0, v3}, Lcom/instagram/android/activity/x;-><init>(Lcom/instagram/android/activity/TumblrAuthActivity;B)V
invoke-virtual {v1, v3, v0, v2}, Landroid/support/v4/app/an;->a(ILandroid/os/Bundle;Landroid/support/v4/app/ao;)Landroid/support/v4/a/c;
sget v0, Lcom/facebook/av;->done:I
invoke-virtual {p0, v0}, Lcom/instagram/android/activity/TumblrAuthActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/activity/TumblrAuthActivity;->q:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
sget v0, Lcom/facebook/av;->username:I
invoke-virtual {p0, v0}, Lcom/instagram/android/activity/TumblrAuthActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/instagram/android/activity/TumblrAuthActivity;->f()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget v2, Lcom/facebook/az;->email:I
invoke-virtual {p0, v2}, Lcom/instagram/android/activity/TumblrAuthActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
sget v0, Lcom/facebook/av;->follow_instagram_text:I
invoke-virtual {p0, v0}, Lcom/instagram/android/activity/TumblrAuthActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
sget v1, Lcom/facebook/az;->followInstagramBlog:I
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
return-void
.end method