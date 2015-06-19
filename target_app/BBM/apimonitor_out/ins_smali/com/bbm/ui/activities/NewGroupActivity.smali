.class public Lcom/bbm/ui/activities/NewGroupActivity;
.super Lcom/bbm/ui/activities/ajy;
.source "NewGroupActivity.java"
.field final a:Lcom/bbm/g/am;
.field private b:Landroid/widget/Switch;
.field private c:Landroid/widget/ImageButton;
.field private d:Landroid/widget/EditText;
.field private e:Landroid/widget/EditText;
.field private f:Z
.field private g:J
.field private h:Ljava/lang/String;
.field private i:Lcom/bbm/ui/HeaderButtonActionBar;
.field private j:Ljava/lang/String;
.field private final k:Lcom/bbm/f/ac;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/bbm/ui/activities/ajy;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/bbm/ui/activities/NewGroupActivity;->h:Ljava/lang/String;
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/NewGroupActivity;->a:Lcom/bbm/g/am;
new-instance v0, Lcom/bbm/ui/activities/yu;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/yu;-><init>(Lcom/bbm/ui/activities/NewGroupActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/NewGroupActivity;->k:Lcom/bbm/f/ac;
new-instance v0, Lcom/bbm/ui/fv;
invoke-direct {v0}, Lcom/bbm/ui/fv;-><init>()V
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewGroupActivity;->a(Lcom/bbm/ui/activities/aka;)V
new-instance v0, Lcom/bbm/ui/voice/o;
invoke-direct {v0}, Lcom/bbm/ui/voice/o;-><init>()V
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewGroupActivity;->a(Lcom/bbm/ui/activities/aka;)V
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/NewGroupActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/NewGroupActivity;->j:Ljava/lang/String;
return-object v0
.end method
.method static synthetic a(Lcom/bbm/ui/activities/NewGroupActivity;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/bbm/ui/activities/NewGroupActivity;->f:Z
return p1
.end method
.method static synthetic b(Lcom/bbm/ui/activities/NewGroupActivity;)Lcom/bbm/f/ac;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/NewGroupActivity;->k:Lcom/bbm/f/ac;
return-object v0
.end method
.method static synthetic c(Lcom/bbm/ui/activities/NewGroupActivity;)V
.registers 6
const v4, 0x7f0e03c6
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/d/a;->h()Ljava/lang/String;
move-result-object v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, "#"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/NewGroupActivity;->j:Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/ui/activities/NewGroupActivity;->a:Lcom/bbm/g/am;
iget-object v0, v0, Lcom/bbm/g/ao;->a:Lcom/bbm/d/a/f;
iget-object v0, v0, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;
iget-object v1, p0, Lcom/bbm/ui/activities/NewGroupActivity;->k:Lcom/bbm/f/ac;
invoke-interface {v0, v1}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ac;)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewGroupActivity;->h:Ljava/lang/String;
const-string v1, ""
invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_75
iget-object v0, p0, Lcom/bbm/ui/activities/NewGroupActivity;->a:Lcom/bbm/g/am;
iget-boolean v1, p0, Lcom/bbm/ui/activities/NewGroupActivity;->f:Z
iget-object v2, p0, Lcom/bbm/ui/activities/NewGroupActivity;->d:Landroid/widget/EditText;
invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/bbm/g/an;->a(ZLjava/lang/String;)Lcom/bbm/g/bk;
move-result-object v1
iget-wide v2, p0, Lcom/bbm/ui/activities/NewGroupActivity;->g:J
invoke-virtual {v1, v2, v3}, Lcom/bbm/g/bk;->a(J)Lcom/bbm/g/bk;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/NewGroupActivity;->j:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/bbm/g/bk;->a(Ljava/lang/String;)Lcom/bbm/g/bk;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/NewGroupActivity;->e:Landroid/widget/EditText;
invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/bbm/g/bk;->c(Ljava/lang/String;)Lcom/bbm/g/bk;
move-result-object v1
invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/NewGroupActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/bbm/g/bk;->d(Ljava/lang/String;)Lcom/bbm/g/bk;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
:goto_74
return-void
:cond_75
iget-object v0, p0, Lcom/bbm/ui/activities/NewGroupActivity;->a:Lcom/bbm/g/am;
iget-boolean v1, p0, Lcom/bbm/ui/activities/NewGroupActivity;->f:Z
iget-object v2, p0, Lcom/bbm/ui/activities/NewGroupActivity;->d:Landroid/widget/EditText;
invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/bbm/g/an;->a(ZLjava/lang/String;)Lcom/bbm/g/bk;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/NewGroupActivity;->h:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/bbm/g/bk;->b(Ljava/lang/String;)Lcom/bbm/g/bk;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/NewGroupActivity;->j:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/bbm/g/bk;->a(Ljava/lang/String;)Lcom/bbm/g/bk;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/NewGroupActivity;->e:Landroid/widget/EditText;
invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/bbm/g/bk;->c(Ljava/lang/String;)Lcom/bbm/g/bk;
move-result-object v1
invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/NewGroupActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/bbm/g/bk;->d(Ljava/lang/String;)Lcom/bbm/g/bk;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
goto :goto_74
.end method
.method static synthetic d(Lcom/bbm/ui/activities/NewGroupActivity;)Landroid/widget/EditText;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/NewGroupActivity;->d:Landroid/widget/EditText;
return-object v0
.end method
.method static synthetic e(Lcom/bbm/ui/activities/NewGroupActivity;)Lcom/bbm/ui/HeaderButtonActionBar;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/NewGroupActivity;->i:Lcom/bbm/ui/HeaderButtonActionBar;
return-object v0
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 11
const/16 v3, 0x1f4
const v5, 0x7f0b027a
const/4 v2, 0x0
const v4, 0x7f0a023c
invoke-super {p0, p1, p2, p3}, Lcom/bbm/ui/activities/ajy;->onActivityResult(IILandroid/content/Intent;)V
if-eqz p3, :cond_6a
const/4 v0, -0x1
if-ne p2, v0, :cond_6a
if-ne p1, v3, :cond_6a
const-string v1, ""
invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_44
const-string v2, "data"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/graphics/Bitmap;
:try_start_23
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {p0}, Lcom/bbm/util/bi;->a(Landroid/content/Context;)Ljava/io/File;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "newGroup.jpg"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Lcom/bbm/util/b/h;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z
:try_end_44
.catch Ljava/lang/Exception; {:try_start_23 .. :try_end_44} :catch_61
:goto_44
:cond_44
invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/NewGroupActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/bbm/ui/activities/NewGroupActivity;->c:Landroid/widget/ImageButton;
new-instance v0, Lcom/bbm/util/b/g;
invoke-virtual {p0}, Lcom/bbm/ui/activities/NewGroupActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
invoke-direct {v0, p0, v2}, Lcom/bbm/util/b/g;-><init>(Landroid/app/Activity;I)V
iget-object v2, p0, Lcom/bbm/ui/activities/NewGroupActivity;->c:Landroid/widget/ImageButton;
invoke-virtual {v0, v1, v2}, Lcom/bbm/util/b/g;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V
iput-object v1, p0, Lcom/bbm/ui/activities/NewGroupActivity;->h:Ljava/lang/String;
:cond_60
:goto_60
return-void
:catch_61
move-exception v0
move-object v6, v0
move-object v0, v1
move-object v1, v6
invoke-static {v1}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
move-object v1, v0
goto :goto_44
:cond_6a
const/4 v0, 0x1
if-ne p1, v0, :cond_60
if-eqz p2, :cond_60
if-eqz p3, :cond_60
sparse-switch p2, :sswitch_data_e4
goto :goto_60
:sswitch_75
const-string v0, "group_icon_resource_id"
invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v1
invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/NewGroupActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/bbm/ui/activities/NewGroupActivity;->c:Landroid/widget/ImageButton;
iget-object v0, p0, Lcom/bbm/ui/activities/NewGroupActivity;->c:Landroid/widget/ImageButton;
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
const-string v0, "group_icon_position"
invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
int-to-long v0, v0
iput-wide v0, p0, Lcom/bbm/ui/activities/NewGroupActivity;->g:J
goto :goto_60
:sswitch_92
const-string v0, "picture_location"
invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_60
invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/NewGroupActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/bbm/ui/activities/NewGroupActivity;->c:Landroid/widget/ImageButton;
new-instance v0, Lcom/bbm/util/b/g;
invoke-virtual {p0}, Lcom/bbm/ui/activities/NewGroupActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
invoke-direct {v0, p0, v2}, Lcom/bbm/util/b/g;-><init>(Landroid/app/Activity;I)V
iget-object v2, p0, Lcom/bbm/ui/activities/NewGroupActivity;->c:Landroid/widget/ImageButton;
invoke-virtual {v0, v1, v2}, Lcom/bbm/util/b/g;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V
iput-object v1, p0, Lcom/bbm/ui/activities/NewGroupActivity;->h:Ljava/lang/String;
goto :goto_60
:sswitch_b7
const-string v0, "picture_location"
invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_60
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-static {p0, v3, v0}, Lcom/bbm/ui/el;->a(Landroid/app/Activity;ILandroid/net/Uri;)V
invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/NewGroupActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/bbm/ui/activities/NewGroupActivity;->c:Landroid/widget/ImageButton;
new-instance v0, Lcom/bbm/util/b/g;
invoke-virtual {p0}, Lcom/bbm/ui/activities/NewGroupActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
invoke-direct {v0, p0, v2}, Lcom/bbm/util/b/g;-><init>(Landroid/app/Activity;I)V
iget-object v2, p0, Lcom/bbm/ui/activities/NewGroupActivity;->c:Landroid/widget/ImageButton;
invoke-virtual {v0, v1, v2}, Lcom/bbm/util/b/g;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V
iput-object v1, p0, Lcom/bbm/ui/activities/NewGroupActivity;->h:Ljava/lang/String;
goto/16 :goto_60
:sswitch_data_e4
.sparse-switch
0xc8 -> :sswitch_75
0x12c -> :sswitch_92
0x190 -> :sswitch_b7
.end sparse-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 8
const-string v1, " + Lcom/bbm/ui/activities/NewGroupActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x1
const/4 v5, -0x1
invoke-super {p0, p1}, Lcom/bbm/ui/activities/ajy;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f03003e
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewGroupActivity;->setContentView(I)V
const v0, 0x7f0a01f5
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewGroupActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Switch;
iput-object v0, p0, Lcom/bbm/ui/activities/NewGroupActivity;->b:Landroid/widget/Switch;
iget-object v0, p0, Lcom/bbm/ui/activities/NewGroupActivity;->b:Landroid/widget/Switch;
invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V
const v0, 0x7f0a023c
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewGroupActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/bbm/ui/activities/NewGroupActivity;->c:Landroid/widget/ImageButton;
const v0, 0x7f0a023d
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewGroupActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/bbm/ui/activities/NewGroupActivity;->d:Landroid/widget/EditText;
iget-object v0, p0, Lcom/bbm/ui/activities/NewGroupActivity;->d:Landroid/widget/EditText;
const/16 v1, 0x14
invoke-static {v0, v1}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;
const v0, 0x7f0a023e
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewGroupActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/bbm/ui/activities/NewGroupActivity;->e:Landroid/widget/EditText;
iget-object v0, p0, Lcom/bbm/ui/activities/NewGroupActivity;->e:Landroid/widget/EditText;
const/16 v1, 0x60
invoke-static {v0, v1}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;
iput-boolean v2, p0, Lcom/bbm/ui/activities/NewGroupActivity;->f:Z
new-instance v0, Lcom/bbm/ui/HeaderButtonActionBar;
invoke-virtual {p0}, Lcom/bbm/ui/activities/NewGroupActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e070d
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/bbm/ui/activities/NewGroupActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e0173
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {p0}, Lcom/bbm/ui/activities/NewGroupActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f0e0638
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v0, p0, v1, v2, v3}, Lcom/bbm/ui/HeaderButtonActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-object v0, p0, Lcom/bbm/ui/activities/NewGroupActivity;->i:Lcom/bbm/ui/HeaderButtonActionBar;
iget-object v0, p0, Lcom/bbm/ui/activities/NewGroupActivity;->i:Lcom/bbm/ui/HeaderButtonActionBar;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewGroupActivity;->i:Lcom/bbm/ui/HeaderButtonActionBar;
new-instance v1, Lcom/bbm/ui/activities/yv;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/yv;-><init>(Lcom/bbm/ui/activities/NewGroupActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewGroupActivity;->i:Lcom/bbm/ui/HeaderButtonActionBar;
new-instance v1, Lcom/bbm/ui/activities/yw;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/yw;-><init>(Lcom/bbm/ui/activities/NewGroupActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/NewGroupActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/NewGroupActivity;->i:Lcom/bbm/ui/HeaderButtonActionBar;
new-instance v2, Landroid/app/ActionBar$LayoutParams;
invoke-direct {v2, v5, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
const/16 v1, 0x10
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V
new-instance v0, Lcom/bbm/ui/activities/yx;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/yx;-><init>(Lcom/bbm/ui/activities/NewGroupActivity;)V
iget-object v1, p0, Lcom/bbm/ui/activities/NewGroupActivity;->d:Landroid/widget/EditText;
invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewGroupActivity;->b:Landroid/widget/Switch;
new-instance v1, Lcom/bbm/ui/activities/yy;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/yy;-><init>(Lcom/bbm/ui/activities/NewGroupActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewGroupActivity;->c:Landroid/widget/ImageButton;
new-instance v1, Lcom/bbm/ui/activities/yz;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/yz;-><init>(Lcom/bbm/ui/activities/NewGroupActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/NewGroupActivity;->getWindow()Landroid/view/Window;
move-result-object v0
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V
const-string v1, " - Lcom/bbm/ui/activities/NewGroupActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/NewGroupActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onPause()V
const-string v1, " - Lcom/bbm/ui/activities/NewGroupActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method