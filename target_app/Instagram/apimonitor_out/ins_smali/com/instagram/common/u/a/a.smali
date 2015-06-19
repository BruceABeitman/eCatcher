.class public final Lcom/instagram/common/u/a/a;
.super Ljava/lang/Object;
.source "ClipboardUtil.java"
.method private static a(Landroid/content/Context;)Ljava/lang/String;
.registers 5
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
const/4 v0, 0x0
if-eqz v1, :cond_12
:try_start_7
invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
move-result-object v2
iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
:try_end_11
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_11} :catch_25
move-result-object v0
:cond_12
:goto_12
if-eqz v0, :cond_1d
invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
move-result-object v0
:goto_18
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
:cond_1d
const v0, 0x104000f
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_18
:catch_25
move-exception v2
goto :goto_12
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)V
.registers 2
invoke-static {p0, p1}, Lcom/instagram/common/u/a/a;->b(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method
.method private static b(Landroid/content/Context;Ljava/lang/String;)V
.registers 5
const/4 v0, 0x0
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0xb
if-lt v1, v2, :cond_21
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_11
invoke-static {p0}, Lcom/instagram/common/u/a/a;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
:cond_11
invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;
move-result-object v1
const-string v0, "clipboard"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/ClipboardManager;
invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
:goto_20
return-void
:cond_21
const-string v0, "clipboard"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/text/ClipboardManager;
invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V
goto :goto_20
.end method