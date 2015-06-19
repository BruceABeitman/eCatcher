.class public Lcom/bbm/util/fb;
.super Ljava/lang/Object;
.source "Util.java"
.field private static a:Ljava/lang/ref/WeakReference;
.field private static b:Ljava/lang/ref/WeakReference;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(J)I
.registers 5
const-wide/16 v1, 0x0
cmp-long v0, p0, v1
if-gez v0, :cond_8
const/4 v0, -0x1
:goto_7
return v0
:cond_8
cmp-long v0, p0, v1
if-lez v0, :cond_e
const/4 v0, 0x1
goto :goto_7
:cond_e
const/4 v0, 0x0
goto :goto_7
.end method
.method public static a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/bbm/util/fe;)Landroid/widget/PopupWindow;
.registers 9
const/4 v4, -0x2
const/4 v3, 0x0
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/Alaska;->getApplicationContext()Landroid/content/Context;
move-result-object v0
const-string v1, "layout_inflater"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/LayoutInflater;
const v1, 0x7f030102
const/4 v2, 0x0
invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
new-instance v2, Landroid/widget/PopupWindow;
invoke-direct {v2, v1, v4, v4, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V
const/4 v0, 0x1
invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V
const/16 v0, 0x11
invoke-virtual {v2, p0, v0, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
const v0, 0x7f0a050f
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
new-instance v3, Lcom/bbm/util/fc;
invoke-direct {v3, p3, v2}, Lcom/bbm/util/fc;-><init>(Lcom/bbm/util/fe;Landroid/widget/PopupWindow;)V
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a050d
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-object v2
.end method
.method public static a(Landroid/content/Context;I)Ljava/lang/String;
.registers 7
const/16 v0, 0x400
new-array v0, v0, [B
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
move-result-object v2
:goto_11
invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
move-result v3
const/4 v4, -0x1
if-eq v3, v4, :cond_21
new-instance v3, Ljava/lang/String;
invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V
invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_11
:cond_21
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static a()V
.registers 3
const/4 v1, 0x0
sget-object v0, Lcom/bbm/util/fb;->a:Ljava/lang/ref/WeakReference;
if-nez v0, :cond_1c
move-object v0, v1
:goto_6
if-eqz v0, :cond_11
invoke-virtual {v0}, Lcom/bbm/ui/b/p;->isShowing()Z
move-result v2
if-eqz v2, :cond_11
invoke-virtual {v0}, Lcom/bbm/ui/b/p;->dismiss()V
:cond_11
sget-object v0, Lcom/bbm/util/fb;->b:Ljava/lang/ref/WeakReference;
if-nez v0, :cond_25
move-object v0, v1
:goto_16
if-eqz v0, :cond_1b
invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V
:cond_1b
return-void
:cond_1c
sget-object v0, Lcom/bbm/util/fb;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/b/p;
goto :goto_6
:cond_25
sget-object v0, Lcom/bbm/util/fb;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/Toast;
goto :goto_16
.end method
.method public static a(I)V
.registers 8
const/4 v3, -0x1
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v1
invoke-virtual {v1, p0}, Lcom/bbm/Alaska;->getString(I)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
const/4 v6, 0x1
move v4, v3
move v5, v3
invoke-static/range {v0 .. v6}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIII)V
return-void
.end method
.method public static a(Landroid/app/Activity;)V
.registers 4
if-eqz p0, :cond_1a
invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z
move-result v0
if-nez v0, :cond_1a
invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_1a
const-string v0, "input_method"
invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
:cond_1a
return-void
.end method
.method public static a(Landroid/app/Activity;Z)V
.registers 6
if-eqz p0, :cond_23
invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z
move-result v0
if-nez v0, :cond_23
const-string v0, "input_method"
invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_23
invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
if-eqz p1, :cond_23
invoke-virtual {v1}, Landroid/view/View;->clearFocus()V
:cond_23
return-void
.end method
.method public static a(Landroid/content/Context;Landroid/content/ClipData;)V
.registers 5
const-string v0, "clipboard"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/ClipboardManager;
:try_start_8
invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
:goto_b
:try_end_b
.catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c
return-void
:catch_c
move-exception v0
const-string v1, "Known issue with Android 4.3 when multiple clipboard observing applications installed issue report: https://code.google.com/p/android/issues/detail?id=58043"
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/bbm/x;->b(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_b
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)V
.registers 11
const/4 v3, 0x0
const/4 v4, -0x1
const-string v2, ""
move-object v0, p0
move-object v1, p1
move-object v5, v3
move v6, v4
move v7, v4
move v8, v4
invoke-static/range {v0 .. v8}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;ILandroid/content/DialogInterface$OnDismissListener;III)V
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
.registers 12
const/4 v3, 0x0
const/4 v6, -0x1
const-string v2, ""
move-object v0, p0
move-object v1, p1
move v4, p2
move-object v5, v3
move v7, v6
move v8, v6
invoke-static/range {v0 .. v8}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;ILandroid/content/DialogInterface$OnDismissListener;III)V
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;II)V
.registers 13
const/4 v3, 0x0
const/4 v7, 0x0
const-string v2, ""
move-object v0, p0
move-object v1, p1
move v4, p2
move-object v5, v3
move v6, p3
move v8, v7
invoke-static/range {v0 .. v8}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;ILandroid/content/DialogInterface$OnDismissListener;III)V
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;IIII)V
.registers 13
const/4 v2, 0x0
move-object v0, p0
move-object v1, p1
move v3, p2
move v4, p3
move v5, p4
move v6, p5
invoke-static/range {v0 .. v6}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIII)V
return-void
.end method
.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIII)V
.registers 12
const/4 v4, 0x0
invoke-static {}, Lcom/bbm/util/fb;->a()V
new-instance v1, Landroid/widget/Toast;
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-direct {v1, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
sput-object v0, Lcom/bbm/util/fb;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v2, 0x7f030125
const/4 v3, 0x0
invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v2
if-eqz p2, :cond_35
const v0, 0x7f0a0589
invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V
:cond_35
const v0, 0x7f0a050d
invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {v1, p6}, Landroid/widget/Toast;->setDuration(I)V
if-gtz p4, :cond_4a
if-gtz p5, :cond_4a
if-lez p3, :cond_4d
:cond_4a
invoke-virtual {v1, p3, p4, p5}, Landroid/widget/Toast;->setGravity(III)V
:cond_4d
invoke-virtual {v1, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V
invoke-virtual {v1}, Landroid/widget/Toast;->show()V
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
.registers 13
const/4 v4, -0x1
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move v6, v4
move v7, v4
move v8, v4
invoke-static/range {v0 .. v8}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;ILandroid/content/DialogInterface$OnDismissListener;III)V
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;ILandroid/content/DialogInterface$OnDismissListener;III)V
.registers 20
invoke-static {}, Lcom/bbm/util/fb;->a()V
instance-of v0, p0, Landroid/app/Activity;
if-eqz v0, :cond_2a
move-object v0, p0
check-cast v0, Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z
move-result v0
if-nez v0, :cond_2a
new-instance v10, Ljava/lang/ref/WeakReference;
new-instance v0, Lcom/bbm/ui/b/p;
move-object v1, p0
move-object v2, p1
move-object v3, p2
move-object v4, p3
move v5, p4
move-object/from16 v6, p5
move/from16 v7, p6
move/from16 v8, p7
move/from16 v9, p8
invoke-direct/range {v0 .. v9}, Lcom/bbm/ui/b/p;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;ILandroid/content/DialogInterface$OnDismissListener;III)V
invoke-direct {v10, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
sput-object v10, Lcom/bbm/util/fb;->a:Ljava/lang/ref/WeakReference;
:goto_29
return-void
:cond_2a
const-string v0, "Calling show dialog from non-activity or finished activity."
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_29
.end method
.method public static a(Ljava/lang/String;)V
.registers 8
const/4 v3, -0x1
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
const/4 v2, 0x0
const/4 v6, 0x1
move-object v1, p0
move v4, v3
move v5, v3
invoke-static/range {v0 .. v6}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIII)V
return-void
.end method
.method public static a(Landroid/app/Activity;ZLjava/lang/Object;)Z
.registers 4
const/4 v0, 0x0
if-nez p1, :cond_e
new-array v0, v0, [Ljava/lang/Object;
invoke-static {p2, v0}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
if-eqz p0, :cond_d
invoke-virtual {p0}, Landroid/app/Activity;->finish()V
:cond_d
const/4 v0, 0x1
:cond_e
return v0
.end method
.method public static a(Landroid/content/Context;)Z
.registers 3
const/4 v0, 0x1
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v1
iget v1, v1, Landroid/content/res/Configuration;->keyboard:I
if-eq v1, v0, :cond_e
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public static a(Landroid/content/Context;Landroid/content/Intent;)Z
.registers 4
const/4 v0, 0x0
if-eqz p0, :cond_5
if-nez p1, :cond_6
:cond_5
:goto_5
return v0
:cond_6
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
if-eqz v1, :cond_5
invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-lez v1, :cond_5
const/4 v0, 0x1
goto :goto_5
.end method
.method public static a(Landroid/graphics/Paint;Landroid/widget/TextView;I)Z
.registers 5
invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F
move-result v0
invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V
invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F
move-result v0
float-to-int v0, v0
invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I
move-result v1
sub-int/2addr v1, p2
if-le v0, v1, :cond_1d
const/4 v0, 0x1
:goto_1c
return v0
:cond_1d
const/4 v0, 0x0
goto :goto_1c
.end method
.method public static a(ZLjava/lang/Object;)Z
.registers 3
const/4 v0, 0x0
if-nez p0, :cond_9
new-array v0, v0, [Ljava/lang/Object;
invoke-static {p1, v0}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
const/4 v0, 0x1
:cond_9
return v0
.end method
.method public static b(J)Ljava/lang/String;
.registers 12
sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/TimeUnit;->toHours(J)J
move-result-wide v0
sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {v2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J
move-result-wide v2
sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J
move-result-wide v4
sub-long v4, v2, v4
sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;
invoke-virtual {v6, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J
move-result-wide v2
sub-long v2, p0, v2
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v6
const-string v7, "%02d:%02d:%02d"
const/4 v8, 0x3
new-array v8, v8, [Ljava/lang/Object;
const/4 v9, 0x0
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
aput-object v0, v8, v9
const/4 v0, 0x1
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
aput-object v1, v8, v0
const/4 v0, 0x2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
aput-object v1, v8, v0
invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static b(I)V
.registers 8
const/4 v3, -0x1
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v1
invoke-virtual {v1, p0}, Lcom/bbm/Alaska;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v2
const v4, 0x7f0e06e5
invoke-virtual {v2, v4}, Lcom/bbm/Alaska;->getString(I)Ljava/lang/String;
move-result-object v2
const/4 v6, 0x1
move v4, v3
move v5, v3
invoke-static/range {v0 .. v6}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIII)V
return-void
.end method
.method public static b(Landroid/app/Activity;)V
.registers 2
const/4 v0, 0x0
invoke-static {p0, v0}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;Z)V
return-void
.end method
.method public static b(Landroid/content/Context;Ljava/lang/String;)V
.registers 9
const/4 v3, -0x1
const/4 v2, 0x0
const/4 v6, 0x1
move-object v0, p0
move-object v1, p1
move v4, v3
move v5, v3
invoke-static/range {v0 .. v6}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIII)V
return-void
.end method
.method public static b(Landroid/content/Context;Ljava/lang/String;I)V
.registers 10
const/4 v3, -0x1
const/4 v2, 0x0
move-object v0, p0
move-object v1, p1
move v4, v3
move v5, v3
move v6, p2
invoke-static/range {v0 .. v6}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIII)V
return-void
.end method
.method public static b()Z
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public static b(Landroid/content/Context;)Z
.registers 3
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
if-eqz v0, :cond_d
const-string v1, "android.hardware.camera"
invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
move-result v0
:goto_c
return v0
:cond_d
const/4 v0, 0x1
goto :goto_c
.end method
.method public static b(Ljava/lang/String;)Z
.registers 3
const/4 v0, 0x0
new-instance v1, Ljava/text/Bidi;
invoke-direct {v1, p0, v0}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V
invoke-virtual {v1}, Ljava/text/Bidi;->isLeftToRight()Z
move-result v1
if-nez v1, :cond_d
const/4 v0, 0x1
:cond_d
return v0
.end method
.method public static c(Landroid/app/Activity;)Landroid/content/Intent;
.registers 5
const/4 v0, 0x1
const/4 v1, 0x0
sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v2
const-string v3, "htc"
invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_2e
invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v2
const-string v3, "always_finish_activities"
invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
move-result v2
if-ne v2, v0, :cond_2c
:goto_22
if-eqz v0, :cond_2e
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.GET_CONTENT"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
:goto_2b
return-object v0
:cond_2c
move v0, v1
goto :goto_22
:cond_2e
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.PICK"
sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
goto :goto_2b
.end method
.method public static c(J)Ljava/lang/String;
.registers 14
const/4 v11, 0x2
const/4 v10, 0x1
const/4 v9, 0x0
sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/TimeUnit;->toHours(J)J
move-result-wide v0
sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {v2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J
move-result-wide v2
sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J
move-result-wide v4
sub-long v4, v2, v4
sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {v6, p0, p1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J
move-result-wide v6
sget-object v8, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;
invoke-virtual {v8, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J
move-result-wide v2
sub-long v2, v6, v2
const-wide/16 v6, 0x1
cmp-long v6, v0, v6
if-ltz v6, :cond_4b
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v6
const-string v7, "%01d:%02d:%02d"
const/4 v8, 0x3
new-array v8, v8, [Ljava/lang/Object;
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
aput-object v0, v8, v9
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
aput-object v0, v8, v10
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
aput-object v0, v8, v11
invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:goto_4a
return-object v0
:cond_4b
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v0
const-string v1, "%01d:%02d"
new-array v6, v11, [Ljava/lang/Object;
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
aput-object v4, v6, v9
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v6, v10
invoke-static {v0, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_4a
.end method
.method public static c(Landroid/content/Context;Ljava/lang/String;)V
.registers 7
invoke-static {}, Lcom/bbm/util/fb;->a()V
new-instance v1, Landroid/widget/Toast;
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-direct {v1, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
sput-object v0, Lcom/bbm/util/fb;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v2, 0x7f030125
const/4 v3, 0x0
const/4 v4, 0x0
invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v2
const v0, 0x7f0a050d
invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/widget/Toast;->setDuration(I)V
invoke-virtual {v1, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V
invoke-virtual {v1}, Landroid/widget/Toast;->show()V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
new-instance v2, Lcom/bbm/util/fd;
invoke-direct {v2, v1}, Lcom/bbm/util/fd;-><init>(Landroid/widget/Toast;)V
const-wide/16 v3, 0x3e8
invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method
.method public static c()Z
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xc
if-lt v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public static c(Ljava/lang/String;)Z
.registers 3
new-instance v0, Ljava/text/Bidi;
const/4 v1, -0x2
invoke-direct {v0, p0, v1}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V
invoke-virtual {v0}, Ljava/text/Bidi;->isMixed()Z
move-result v0
return v0
.end method
.method public static d()Z
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x11
if-lt v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public static d(Ljava/lang/String;)Z
.registers 5
const/4 v0, 0x1
const/4 v1, 0x0
new-instance v2, Ljava/text/Bidi;
const/4 v3, -0x2
invoke-direct {v2, p0, v3}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V
invoke-virtual {v2, v1}, Ljava/text/Bidi;->getLevelAt(I)I
move-result v2
if-ne v2, v0, :cond_f
:goto_e
return v0
:cond_f
move v0, v1
goto :goto_e
.end method
.method public static e()Z
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x12
if-lt v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public static f()Z
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x13
if-lt v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public static g()Z
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x14
if-lt v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public static h()Z
.registers 1
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v0
invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/util/fb;->b(Ljava/lang/String;)Z
move-result v0
return v0
.end method