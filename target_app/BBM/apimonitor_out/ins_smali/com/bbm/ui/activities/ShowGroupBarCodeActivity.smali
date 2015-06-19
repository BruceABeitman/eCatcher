.class public Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;
.super Lcom/bbm/ui/activities/md;
.source "ShowGroupBarCodeActivity.java"
.field private final a:Lcom/bbm/d;
.field private b:Lcom/bbm/ui/activities/ahm;
.field private d:Landroid/widget/ImageView;
.field private e:Landroid/widget/TextView;
.field private f:Landroid/widget/Button;
.field private final g:Lcom/bbm/g/am;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/bbm/ui/activities/md;-><init>()V
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;->a:Lcom/bbm/d;
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;->g:Lcom/bbm/g/am;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;)Lcom/bbm/g/am;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;->g:Lcom/bbm/g/am;
return-object v0
.end method
.method static synthetic a(Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;Ljava/lang/String;)V
.registers 12
const/4 v4, 0x0
:try_start_1
new-instance v0, Lcom/google/zxing/g/b;
invoke-direct {v0}, Lcom/google/zxing/g/b;-><init>()V
sget-object v0, Lcom/google/zxing/a;->l:Lcom/google/zxing/a;
const/16 v1, 0xc8
const/16 v2, 0xc8
invoke-static {p1, v0, v1, v2}, Lcom/google/zxing/g/b;->a(Ljava/lang/String;Lcom/google/zxing/a;II)Lcom/google/zxing/b/b;
move-result-object v6
iget v3, v6, Lcom/google/zxing/b/b;->a:I
iget v7, v6, Lcom/google/zxing/b/b;->b:I
mul-int v0, v3, v7
new-array v1, v0, [I
move v5, v4
:goto_19
if-ge v5, v7, :cond_36
mul-int v8, v5, v3
move v2, v4
:goto_1e
if-ge v2, v3, :cond_32
add-int v9, v8, v2
invoke-virtual {v6, v2, v5}, Lcom/google/zxing/b/b;->a(II)Z
move-result v0
if-eqz v0, :cond_30
const/high16 v0, -0x100
:goto_2a
aput v0, v1, v9
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_1e
:cond_30
const/4 v0, -0x1
goto :goto_2a
:cond_32
add-int/lit8 v0, v5, 0x1
move v5, v0
goto :goto_19
:cond_36
sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v0
const/4 v2, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
move v6, v3
invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
iget-object v1, p0, Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;->d:Landroid/widget/ImageView;
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:try_end_48
.catch Lcom/google/zxing/q; {:try_start_1 .. :try_end_48} :catch_49
:goto_48
return-void
:catch_49
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_48
.end method
.method static synthetic b(Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;)Lcom/bbm/ui/activities/ahm;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;->b:Lcom/bbm/ui/activities/ahm;
return-object v0
.end method
.method static synthetic c(Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;)Lcom/bbm/d;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;->a:Lcom/bbm/d;
return-object v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 7
const-string v1, " + Lcom/bbm/ui/activities/ShowGroupBarCodeActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, -0x1
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I
move-result v0
const/high16 v2, 0x1
if-ne v0, v2, :cond_13
sget-object v0, Lcom/bbm/ui/c;->d:Lcom/bbm/ui/c;
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;->a(Lcom/bbm/ui/c;)V
:cond_13
invoke-super {p0, p1}, Lcom/bbm/ui/activities/md;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030060
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;->setContentView(I)V
iput-boolean v1, p0, Lcom/bbm/ui/activities/ev;->y:Z
new-instance v0, Lcom/bbm/ui/HeaderButtonActionBar;
const v2, 0x7f0e05cb
invoke-virtual {p0, v2}, Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;->getString(I)Ljava/lang/String;
move-result-object v2
const v3, 0x7f0e0244
invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v0, p0, v2, v3}, Lcom/bbm/ui/HeaderButtonActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v2, Lcom/bbm/ui/activities/ahk;
invoke-direct {v2, p0}, Lcom/bbm/ui/activities/ahk;-><init>(Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;)V
invoke-virtual {v0, v2}, Lcom/bbm/ui/HeaderButtonActionBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v2
new-instance v3, Landroid/app/ActionBar$LayoutParams;
invoke-direct {v3, v4, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V
invoke-virtual {v2, v0, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
const/16 v0, 0x10
invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V
const v0, 0x7f0a0301
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;->e:Landroid/widget/TextView;
iget-object v2, p0, Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;->e:Landroid/widget/TextView;
invoke-virtual {p0}, Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v3, "from_capture"
invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_a9
move v0, v1
:goto_64
invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;->a:Lcom/bbm/d;
iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v2, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-static {v2}, Lcom/bbm/g/an;->e(Ljava/lang/String;)Lcom/bbm/g/cn;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
new-instance v0, Lcom/bbm/ui/activities/ahm;
invoke-direct {v0, p0, v1}, Lcom/bbm/ui/activities/ahm;-><init>(Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;B)V
iput-object v0, p0, Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;->b:Lcom/bbm/ui/activities/ahm;
iget-object v0, p0, Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;->a:Lcom/bbm/d;
iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v0, v0, Lcom/bbm/g/ao;->a:Lcom/bbm/d/a/f;
iget-object v0, v0, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;
iget-object v1, p0, Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;->b:Lcom/bbm/ui/activities/ahm;
invoke-interface {v0, v1}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ac;)V
const v0, 0x7f0a0302
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;->d:Landroid/widget/ImageView;
const v0, 0x7f0a02ff
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;->f:Landroid/widget/Button;
iget-object v0, p0, Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;->f:Landroid/widget/Button;
new-instance v1, Lcom/bbm/ui/activities/ahl;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/ahl;-><init>(Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const-string v1, " - Lcom/bbm/ui/activities/ShowGroupBarCodeActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_a9
const/16 v0, 0x8
goto :goto_64
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/ShowGroupBarCodeActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/md;->onPause()V
const-string v1, " - Lcom/bbm/ui/activities/ShowGroupBarCodeActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method