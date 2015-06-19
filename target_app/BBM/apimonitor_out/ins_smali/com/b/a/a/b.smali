.class final Lcom/b/a/a/b;
.super Ljava/lang/Object;
.source "AppStoreInterstitial.java"
.method static synthetic a(Landroid/view/View;Z)V
.registers 8
sget v0, Lcom/b/a/a/n;->dbx_install_title:I
invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
sget v1, Lcom/b/a/a/n;->dbx_install_main:I
invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
sget v2, Lcom/b/a/a/n;->dbx_install_sub:I
invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
sget v3, Lcom/b/a/a/n;->dbx_bottom_bar_ok_button:I
invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/Button;
sget v4, Lcom/b/a/a/n;->dbx_bottom_bar_cancel_button:I
invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/Button;
if-eqz p1, :cond_44
sget v5, Lcom/b/a/a/p;->dbx_update:I
invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V
sget v0, Lcom/b/a/a/p;->dbx_update_main:I
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V
sget v0, Lcom/b/a/a/p;->dbx_update_sub:I
invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V
sget v0, Lcom/b/a/a/p;->dbx_update_button_ok:I
invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(I)V
:goto_3e
sget v0, Lcom/b/a/a/p;->dbx_install_button_cancel:I
invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(I)V
return-void
:cond_44
sget v5, Lcom/b/a/a/p;->dbx_install:I
invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V
sget v0, Lcom/b/a/a/p;->dbx_install_main:I
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V
sget v0, Lcom/b/a/a/p;->dbx_install_sub:I
invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V
sget v0, Lcom/b/a/a/p;->dbx_install_button_ok:I
invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(I)V
goto :goto_3e
.end method
.method static synthetic a(Landroid/view/Window;)V
.registers 7
new-instance v0, Landroid/util/DisplayMetrics;
invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V
invoke-virtual {p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;
move-result-object v1
invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I
const/high16 v2, 0x41a0
iget v3, v0, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v2, v3
float-to-int v2, v2
sub-int/2addr v1, v2
const v2, 0x44138000
iget v3, v0, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v2, v3
float-to-int v2, v2
invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I
move-result v1
iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I
const/high16 v3, 0x4234
iget v4, v0, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v3, v4
float-to-int v3, v3
sub-int/2addr v2, v3
const/high16 v3, 0x442f
iget v4, v0, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v3, v4
float-to-int v3, v3
invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I
move-result v2
iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I
sub-int/2addr v3, v1
div-int/lit8 v3, v3, 0x2
iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I
sub-int/2addr v4, v2
const/high16 v5, 0x41c8
iget v0, v0, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v0, v5
float-to-int v0, v0
sub-int v0, v4, v0
div-int/lit8 v0, v0, 0x2
invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;
move-result-object v4
iput v3, v4, Landroid/view/WindowManager$LayoutParams;->x:I
iput v0, v4, Landroid/view/WindowManager$LayoutParams;->y:I
iput v1, v4, Landroid/view/WindowManager$LayoutParams;->width:I
iput v2, v4, Landroid/view/WindowManager$LayoutParams;->height:I
invoke-virtual {p0, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
const/16 v0, 0x33
invoke-virtual {p0, v0}, Landroid/view/Window;->setGravity(I)V
return-void
.end method
.method static a(Landroid/app/Activity;)Z
.registers 5
const/4 v0, 0x1
invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
:try_start_5
const-string v2, "com.dropbox.android"
const/4 v3, 0x1
invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
:goto_b
:try_end_b
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_b} :catch_c
return v0
:catch_c
move-exception v0
const/4 v0, 0x0
goto :goto_b
.end method
.method static synthetic b(Landroid/app/Activity;)V
.registers 3
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.VIEW"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v1, "market://details?id=com.dropbox.android"
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
return-void
.end method