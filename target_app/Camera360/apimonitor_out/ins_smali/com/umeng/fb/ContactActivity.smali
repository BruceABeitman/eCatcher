.class public Lcom/umeng/fb/ContactActivity;
.super Landroid/app/Activity;
.source "ContactActivity.java"
.field private static final a:Ljava/lang/String; = "plain"
.field private b:Landroid/widget/ImageView;
.field private c:Landroid/widget/ImageView;
.field private d:Landroid/widget/EditText;
.field private e:Lcom/umeng/fb/FeedbackAgent;
.field private f:Landroid/widget/TextView;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
return-void
.end method
.method static synthetic a(Lcom/umeng/fb/ContactActivity;)Lcom/umeng/fb/FeedbackAgent;
.registers 2
iget-object v0, p0, Lcom/umeng/fb/ContactActivity;->e:Lcom/umeng/fb/FeedbackAgent;
return-object v0
.end method
.method static synthetic b(Lcom/umeng/fb/ContactActivity;)Landroid/widget/EditText;
.registers 2
iget-object v0, p0, Lcom/umeng/fb/ContactActivity;->d:Landroid/widget/EditText;
return-object v0
.end method
.method  a()V
.registers 3
invoke-virtual {p0}, Lcom/umeng/fb/ContactActivity;->finish()V
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/4 v1, 0x4
if-le v0, v1, :cond_10
new-instance v0, Lcom/umeng/fb/c;
invoke-direct {v0, p0}, Lcom/umeng/fb/c;-><init>(Lcom/umeng/fb/ContactActivity;)V
invoke-virtual {v0, p0}, Lcom/umeng/fb/c;->a(Landroid/app/Activity;)V
:cond_10
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 7
const-string v1, " + Lcom/umeng/fb/ContactActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
invoke-static {p0}, Lcom/umeng/fb/b/d;->a(Landroid/content/Context;)I
move-result v0
invoke-virtual {p0, v0}, Lcom/umeng/fb/ContactActivity;->setContentView(I)V
new-instance v0, Lcom/umeng/fb/FeedbackAgent;
invoke-direct {v0, p0}, Lcom/umeng/fb/FeedbackAgent;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/umeng/fb/ContactActivity;->e:Lcom/umeng/fb/FeedbackAgent;
invoke-static {p0}, Lcom/umeng/fb/b/c;->d(Landroid/content/Context;)I
move-result v0
invoke-virtual {p0, v0}, Lcom/umeng/fb/ContactActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/umeng/fb/ContactActivity;->b:Landroid/widget/ImageView;
invoke-static {p0}, Lcom/umeng/fb/b/c;->i(Landroid/content/Context;)I
move-result v0
invoke-virtual {p0, v0}, Lcom/umeng/fb/ContactActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/umeng/fb/ContactActivity;->c:Landroid/widget/ImageView;
invoke-static {p0}, Lcom/umeng/fb/b/c;->j(Landroid/content/Context;)I
move-result v0
invoke-virtual {p0, v0}, Lcom/umeng/fb/ContactActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/umeng/fb/ContactActivity;->d:Landroid/widget/EditText;
invoke-static {p0}, Lcom/umeng/fb/b/c;->k(Landroid/content/Context;)I
move-result v0
invoke-virtual {p0, v0}, Lcom/umeng/fb/ContactActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/umeng/fb/ContactActivity;->f:Landroid/widget/TextView;
:try_start_41
iget-object v0, p0, Lcom/umeng/fb/ContactActivity;->e:Lcom/umeng/fb/FeedbackAgent;
invoke-virtual {v0}, Lcom/umeng/fb/FeedbackAgent;->getUserInfo()Lcom/umeng/fb/model/UserInfo;
move-result-object v0
invoke-virtual {v0}, Lcom/umeng/fb/model/UserInfo;->getContact()Ljava/util/Map;
move-result-object v0
const-string/jumbo v1, "plain"
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v1, p0, Lcom/umeng/fb/ContactActivity;->d:Landroid/widget/EditText;
invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/umeng/fb/ContactActivity;->e:Lcom/umeng/fb/FeedbackAgent;
invoke-virtual {v1}, Lcom/umeng/fb/FeedbackAgent;->getUserInfoLastUpdateAt()J
move-result-wide v1
const-wide/16 v3, 0x0
cmp-long v3, v1, v3
if-lez v3, :cond_ca
new-instance v3, Ljava/util/Date;
invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V
invoke-virtual {p0}, Lcom/umeng/fb/ContactActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-static {p0}, Lcom/umeng/fb/b/e;->a(Landroid/content/Context;)I
move-result v2
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/umeng/fb/ContactActivity;->f:Landroid/widget/TextView;
new-instance v4, Ljava/lang/StringBuilder;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;
move-result-object v1
invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/umeng/fb/ContactActivity;->f:Landroid/widget/TextView;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
:goto_9a
invoke-static {v0}, Lcom/umeng/common/util/g;->d(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_b5
iget-object v0, p0, Lcom/umeng/fb/ContactActivity;->d:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z
const-string/jumbo v0, "input_method"
invoke-virtual {p0, v0}, Lcom/umeng/fb/ContactActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
if-eqz v0, :cond_b5
const/4 v1, 0x2
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V
:try_end_b5
.catch Ljava/lang/NullPointerException; {:try_start_41 .. :try_end_b5} :catch_d2
:goto_b5
:cond_b5
iget-object v0, p0, Lcom/umeng/fb/ContactActivity;->b:Landroid/widget/ImageView;
new-instance v1, Lcom/umeng/fb/a;
invoke-direct {v1, p0}, Lcom/umeng/fb/a;-><init>(Lcom/umeng/fb/ContactActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/umeng/fb/ContactActivity;->c:Landroid/widget/ImageView;
new-instance v1, Lcom/umeng/fb/b;
invoke-direct {v1, p0}, Lcom/umeng/fb/b;-><init>(Lcom/umeng/fb/ContactActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const-string v1, " - Lcom/umeng/fb/ContactActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_ca
:try_start_ca
iget-object v1, p0, Lcom/umeng/fb/ContactActivity;->f:Landroid/widget/TextView;
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
:try_end_d1
.catch Ljava/lang/NullPointerException; {:try_start_ca .. :try_end_d1} :catch_d2
goto :goto_9a
:catch_d2
move-exception v0
invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
goto :goto_b5
.end method