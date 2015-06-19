.class public final Lcom/instagram/c/a;
.super Ljava/lang/Object;
.source "Appirater.java"
.field private a:Landroid/content/Context;
.field private b:Ljava/util/Date;
.field private c:Ljava/util/Date;
.field private d:I
.field private e:I
.field private f:I
.field private g:Z
.field private h:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/c/a;->a:Landroid/content/Context;
invoke-direct {p0}, Lcom/instagram/c/a;->e()V
return-void
.end method
.method static synthetic a(Lcom/instagram/c/a;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/instagram/c/a;->a:Landroid/content/Context;
return-object v0
.end method
.method private a(Z)V
.registers 3
invoke-direct {p0}, Lcom/instagram/c/a;->d()V
invoke-direct {p0}, Lcom/instagram/c/a;->c()Z
move-result v0
if-eqz v0, :cond_c
invoke-direct {p0}, Lcom/instagram/c/a;->b()V
:cond_c
return-void
.end method
.method private b()V
.registers 10
const/4 v8, 0x1
const/4 v7, 0x0
new-instance v2, Landroid/app/Dialog;
iget-object v0, p0, Lcom/instagram/c/a;->a:Landroid/content/Context;
sget v1, Lcom/facebook/ba;->IgDialog:I
invoke-direct {v2, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V
iget-object v0, p0, Lcom/instagram/c/a;->a:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v3
const-string v0, "unknown"
:try_start_13
iget-object v1, p0, Lcom/instagram/c/a;->a:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
iget-object v4, p0, Lcom/instagram/c/a;->a:Landroid/content/Context;
invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v4
iget-object v5, p0, Lcom/instagram/c/a;->a:Landroid/content/Context;
invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v5
const/4 v6, 0x0
invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
move-result-object v4
invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
:try_end_2d
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_2d} :catch_a3
move-result-object v0
move-object v1, v0
:goto_2f
sget v0, Lcom/facebook/aw;->appirater:I
invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(I)V
sget v0, Lcom/facebook/av;->appirater_title_area:I
invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
sget v4, Lcom/facebook/az;->APPIRATER_MESSAGE_TITLE:I
new-array v5, v8, [Ljava/lang/Object;
aput-object v1, v5, v7
invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
sget v0, Lcom/facebook/av;->appirater_message_area:I
invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
sget v4, Lcom/facebook/az;->APPIRATER_MESSAGE:I
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v4
new-array v5, v8, [Ljava/lang/Object;
aput-object v1, v5, v7
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
sget v0, Lcom/facebook/av;->appirater_rate_button:I
invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
sget v4, Lcom/facebook/az;->APPIRATER_RATE_BUTTON:I
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v3
new-array v4, v8, [Ljava/lang/Object;
aput-object v1, v4, v7
invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
sget v1, Lcom/facebook/av;->appirater_rate_later_button:I
invoke-virtual {v2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;
move-result-object v1
sget v3, Lcom/facebook/av;->appirater_cancel_button:I
invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;
move-result-object v3
new-instance v4, Lcom/instagram/c/b;
invoke-direct {v4, p0, v2}, Lcom/instagram/c/b;-><init>(Lcom/instagram/c/a;Landroid/app/Dialog;)V
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v0, Lcom/instagram/c/c;
invoke-direct {v0, p0, v2}, Lcom/instagram/c/c;-><init>(Lcom/instagram/c/a;Landroid/app/Dialog;)V
invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v0, Lcom/instagram/c/d;
invoke-direct {v0, p0, v2}, Lcom/instagram/c/d;-><init>(Lcom/instagram/c/a;Landroid/app/Dialog;)V
invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {v2}, Landroid/app/Dialog;->show()V
return-void
:catch_a3
move-exception v1
move-object v1, v0
goto :goto_2f
.end method
.method static synthetic b(Lcom/instagram/c/a;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/c/a;->g:Z
return v0
.end method
.method static synthetic c(Lcom/instagram/c/a;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/c/a;->f()V
return-void
.end method
.method private c()Z
.registers 4
const/4 v0, 0x0
iget v1, p0, Lcom/instagram/c/a;->d:I
if-gez v1, :cond_6
:cond_5
:goto_5
return v0
:cond_6
iget v1, p0, Lcom/instagram/c/a;->e:I
const/4 v2, 0x4
if-lt v1, v2, :cond_5
iget-boolean v1, p0, Lcom/instagram/c/a;->h:Z
if-nez v1, :cond_5
iget-boolean v1, p0, Lcom/instagram/c/a;->g:Z
if-nez v1, :cond_5
const/4 v0, 0x1
goto :goto_5
.end method
.method static synthetic d(Lcom/instagram/c/a;)I
.registers 2
const/4 v0, 0x0
iput v0, p0, Lcom/instagram/c/a;->e:I
return v0
.end method
.method private d()V
.registers 6
const/4 v4, 0x0
const/16 v3, 0x7d0
const/4 v2, 0x0
iget v0, p0, Lcom/instagram/c/a;->f:I
const/4 v1, -0x1
if-ne v0, v1, :cond_b
iput v3, p0, Lcom/instagram/c/a;->f:I
:cond_b
iget v0, p0, Lcom/instagram/c/a;->f:I
if-ne v0, v3, :cond_24
iget-object v0, p0, Lcom/instagram/c/a;->b:Ljava/util/Date;
if-nez v0, :cond_1a
new-instance v0, Ljava/util/Date;
invoke-direct {v0}, Ljava/util/Date;-><init>()V
iput-object v0, p0, Lcom/instagram/c/a;->b:Ljava/util/Date;
:cond_1a
iget v0, p0, Lcom/instagram/c/a;->e:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/instagram/c/a;->e:I
:goto_20
invoke-direct {p0}, Lcom/instagram/c/a;->f()V
return-void
:cond_24
iput v3, p0, Lcom/instagram/c/a;->f:I
iput-object v4, p0, Lcom/instagram/c/a;->b:Ljava/util/Date;
iput v2, p0, Lcom/instagram/c/a;->d:I
const/4 v0, 0x1
iput v0, p0, Lcom/instagram/c/a;->e:I
iput-boolean v2, p0, Lcom/instagram/c/a;->g:Z
iput-boolean v2, p0, Lcom/instagram/c/a;->h:Z
iput-object v4, p0, Lcom/instagram/c/a;->c:Ljava/util/Date;
goto :goto_20
.end method
.method private e()V
.registers 8
const-wide/16 v5, -0x1
const/4 v4, 0x0
iget-object v0, p0, Lcom/instagram/c/a;->a:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
iget-object v0, p0, Lcom/instagram/c/a;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/instagram/c/a;->a:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
const-string v1, "APPIRATER_FIRST_USE_DATE"
invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_66
const-string v1, "APPIRATER_FIRST_USE_DATE"
invoke-interface {v0, v1, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v1
cmp-long v3, v5, v1
if-eqz v3, :cond_2d
new-instance v3, Ljava/util/Date;
invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V
iput-object v3, p0, Lcom/instagram/c/a;->b:Ljava/util/Date;
:cond_2d
const-string v1, "APPIRATER_REMINDER_REQUEST_DATE"
invoke-interface {v0, v1, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v1
cmp-long v3, v5, v1
if-eqz v3, :cond_3e
new-instance v3, Ljava/util/Date;
invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V
iput-object v3, p0, Lcom/instagram/c/a;->c:Ljava/util/Date;
:cond_3e
const-string v1, "APPIRATER_USE_COUNT"
invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v1
iput v1, p0, Lcom/instagram/c/a;->d:I
const-string v1, "APPIRATER_SIG_EVENT_COUNT"
invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v1
iput v1, p0, Lcom/instagram/c/a;->e:I
const-string v1, "APPIRATER_CURRENT_VERSION"
invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v1
iput v1, p0, Lcom/instagram/c/a;->f:I
const-string v1, "APPIRATER_RATED_CURRENT_VERSION"
invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v1
iput-boolean v1, p0, Lcom/instagram/c/a;->g:Z
const-string v1, "APPIRATER_DECLINED_TO_RATE"
invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/instagram/c/a;->h:Z
:cond_66
return-void
.end method
.method static synthetic e(Lcom/instagram/c/a;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/c/a;->h:Z
return v0
.end method
.method private f()V
.registers 7
const-wide/16 v2, -0x1
iget-object v0, p0, Lcom/instagram/c/a;->a:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
iget-object v0, p0, Lcom/instagram/c/a;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/instagram/c/a;->a:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
const/4 v4, 0x0
invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v4
iget-object v0, p0, Lcom/instagram/c/a;->b:Ljava/util/Date;
if-eqz v0, :cond_5d
iget-object v0, p0, Lcom/instagram/c/a;->b:Ljava/util/Date;
invoke-virtual {v0}, Ljava/util/Date;->getTime()J
move-result-wide v0
:goto_22
const-string v5, "APPIRATER_FIRST_USE_DATE"
invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
iget-object v0, p0, Lcom/instagram/c/a;->c:Ljava/util/Date;
if-eqz v0, :cond_31
iget-object v0, p0, Lcom/instagram/c/a;->c:Ljava/util/Date;
invoke-virtual {v0}, Ljava/util/Date;->getTime()J
move-result-wide v2
:cond_31
const-string v0, "APPIRATER_REMINDER_REQUEST_DATE"
invoke-interface {v4, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
const-string v0, "APPIRATER_USE_COUNT"
iget v1, p0, Lcom/instagram/c/a;->d:I
invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string v0, "APPIRATER_SIG_EVENT_COUNT"
iget v1, p0, Lcom/instagram/c/a;->e:I
invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string v0, "APPIRATER_CURRENT_VERSION"
iget v1, p0, Lcom/instagram/c/a;->f:I
invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string v0, "APPIRATER_RATED_CURRENT_VERSION"
iget-boolean v1, p0, Lcom/instagram/c/a;->g:Z
invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
const-string v0, "APPIRATER_DECLINED_TO_RATE"
iget-boolean v1, p0, Lcom/instagram/c/a;->h:Z
invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
:cond_5d
move-wide v0, v2
goto :goto_22
.end method
.method public final a()V
.registers 2
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/instagram/c/a;->a(Z)V
return-void
.end method