.class public Lcom/bbm/ui/e/j;
.super Ljava/lang/Object;
.source "EphemeralPictureHolder.java"
.implements Lcom/bbm/ui/e/at;
.field private a:Landroid/widget/TextView;
.field private b:Landroid/widget/TextView;
.field private c:Landroid/widget/TextView;
.field private d:Lcom/bbm/ui/FileTransferMessageView;
.field private e:Landroid/widget/ProgressBar;
.field private final f:Landroid/app/Activity;
.field private g:Landroid/view/View$OnTouchListener;
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnTouchListener;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
check-cast p1, Landroid/app/Activity;
iput-object p1, p0, Lcom/bbm/ui/e/j;->f:Landroid/app/Activity;
iput-object p2, p0, Lcom/bbm/ui/e/j;->g:Landroid/view/View$OnTouchListener;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/e/j;)Landroid/app/Activity;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/j;->f:Landroid/app/Activity;
return-object v0
.end method
.method public static a(Landroid/content/Context;Lcom/bbm/d/fs;Lcom/bbm/d/eu;)Ljava/lang/String;
.registers 6
const v2, 0x7f0e0315
iget-boolean v0, p2, Lcom/bbm/d/eu;->e:Z
if-eqz v0, :cond_12
iget-object v0, p1, Lcom/bbm/d/fs;->r:Lcom/bbm/util/bh;
sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-eq v0, v1, :cond_12
invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_11
return-object v0
:cond_12
iget-boolean v0, p1, Lcom/bbm/d/fs;->h:Z
if-eqz v0, :cond_58
iget-object v0, p1, Lcom/bbm/d/fs;->l:Lcom/bbm/d/fu;
sget-object v1, Lcom/bbm/d/fu;->a:Lcom/bbm/d/fu;
if-ne v0, v1, :cond_24
const v0, 0x7f0e0356
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_11
:cond_24
iget-object v0, p1, Lcom/bbm/d/fs;->l:Lcom/bbm/d/fu;
sget-object v1, Lcom/bbm/d/fu;->c:Lcom/bbm/d/fu;
if-ne v0, v1, :cond_32
const v0, 0x7f0e0359
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_11
:cond_32
iget-object v0, p1, Lcom/bbm/d/fs;->l:Lcom/bbm/d/fu;
sget-object v1, Lcom/bbm/d/fu;->d:Lcom/bbm/d/fu;
if-ne v0, v1, :cond_91
iget-boolean v0, p1, Lcom/bbm/d/fs;->m:Z
if-eqz v0, :cond_4d
iget-boolean v0, p2, Lcom/bbm/d/eu;->e:Z
if-eqz v0, :cond_45
invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_11
:cond_45
const v0, 0x7f0e0316
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_11
:cond_4d
iget-object v0, p1, Lcom/bbm/d/fs;->j:Lcom/bbm/d/ft;
invoke-virtual {v0}, Lcom/bbm/d/ft;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0}, Lcom/bbm/util/bi;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_11
:cond_58
iget-object v0, p1, Lcom/bbm/d/fs;->l:Lcom/bbm/d/fu;
sget-object v1, Lcom/bbm/d/fu;->a:Lcom/bbm/d/fu;
if-ne v0, v1, :cond_66
const v0, 0x7f0e0365
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_11
:cond_66
iget-object v0, p1, Lcom/bbm/d/fs;->l:Lcom/bbm/d/fu;
sget-object v1, Lcom/bbm/d/fu;->c:Lcom/bbm/d/fu;
if-ne v0, v1, :cond_74
const v0, 0x7f0e0361
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_11
:cond_74
iget-object v0, p1, Lcom/bbm/d/fs;->l:Lcom/bbm/d/fu;
sget-object v1, Lcom/bbm/d/fu;->d:Lcom/bbm/d/fu;
if-ne v0, v1, :cond_91
iget-boolean v0, p1, Lcom/bbm/d/fs;->m:Z
if-eqz v0, :cond_86
const v0, 0x7f0e0318
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_11
:cond_86
iget-object v0, p1, Lcom/bbm/d/fs;->j:Lcom/bbm/d/ft;
invoke-virtual {v0}, Lcom/bbm/d/ft;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0}, Lcom/bbm/util/bi;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_11
:cond_91
const-string v0, ""
goto/16 :goto_11
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 10
const v6, 0x7f0a048d
const v5, 0x7f090088
const/4 v4, 0x0
const/16 v3, 0x8
const v0, 0x7f0300dd
invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
const v0, 0x7f0a049e
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/e/j;->a:Landroid/widget/TextView;
iget-object v0, p0, Lcom/bbm/ui/e/j;->a:Landroid/widget/TextView;
iget-object v2, p0, Lcom/bbm/ui/e/j;->f:Landroid/app/Activity;
invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I
move-result v2
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v0, p0, Lcom/bbm/ui/e/j;->a:Landroid/widget/TextView;
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V
const v0, 0x7f0a049f
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/e/j;->b:Landroid/widget/TextView;
iget-object v0, p0, Lcom/bbm/ui/e/j;->b:Landroid/widget/TextView;
iget-object v2, p0, Lcom/bbm/ui/e/j;->f:Landroid/app/Activity;
invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I
move-result v2
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V
const v0, 0x7f0a0456
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
const v0, 0x7f0a0455
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/e/j;->c:Landroid/widget/TextView;
iget-object v0, p0, Lcom/bbm/ui/e/j;->c:Landroid/widget/TextView;
iget-object v2, p0, Lcom/bbm/ui/e/j;->f:Landroid/app/Activity;
invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f090089
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I
move-result v2
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v0, p0, Lcom/bbm/ui/e/j;->c:Landroid/widget/TextView;
const v2, 0x7f0e0317
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V
const v0, 0x7f0a04a3
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ProgressBar;
iput-object v0, p0, Lcom/bbm/ui/e/j;->e:Landroid/widget/ProgressBar;
move-object v0, v1
check-cast v0, Lcom/bbm/ui/FileTransferMessageView;
iput-object v0, p0, Lcom/bbm/ui/e/j;->d:Lcom/bbm/ui/FileTransferMessageView;
iget-object v0, p0, Lcom/bbm/ui/e/j;->d:Lcom/bbm/ui/FileTransferMessageView;
const v2, 0x7f020410
invoke-virtual {v0, v2}, Lcom/bbm/ui/FileTransferMessageView;->setPicture(I)V
return-object v1
.end method
.method public final a(Lcom/bbm/ui/e/i;Z)V
.registers 16
const/16 v12, 0x8
const/4 v11, 0x0
iget-object v0, p0, Lcom/bbm/ui/e/j;->d:Lcom/bbm/ui/FileTransferMessageView;
invoke-virtual {v0}, Lcom/bbm/ui/FileTransferMessageView;->setIdleState()V
iget-object v0, p1, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v1
iget-object v2, v0, Lcom/bbm/d/fg;->g:Lorg/json/JSONObject;
const-string v3, "ephemeralMetaDataId"
invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/bbm/d/a;->I(Ljava/lang/String;)Lcom/bbm/d/eu;
move-result-object v2
iget-object v3, v0, Lcom/bbm/d/fg;->g:Lorg/json/JSONObject;
const-string v4, "pictureTransferId"
invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/bbm/d/a;->w(Ljava/lang/String;)Lcom/bbm/d/fs;
move-result-object v3
iget-object v4, v0, Lcom/bbm/d/fg;->o:Ljava/lang/String;
invoke-virtual {v1, v4}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v1
iget-object v4, p0, Lcom/bbm/ui/e/j;->c:Landroid/widget/TextView;
const/4 v5, 0x4
invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V
iget-boolean v4, v0, Lcom/bbm/d/fg;->j:Z
if-eqz v4, :cond_90
iget-object v4, p0, Lcom/bbm/ui/e/j;->d:Lcom/bbm/ui/FileTransferMessageView;
const v5, 0x7f020069
invoke-virtual {v4, v5}, Lcom/bbm/ui/FileTransferMessageView;->setBackgroundResource(I)V
iget-object v4, p0, Lcom/bbm/ui/e/j;->b:Landroid/widget/TextView;
invoke-virtual {v4, v12}, Landroid/widget/TextView;->setVisibility(I)V
:goto_43
:cond_43
iget-object v4, p0, Lcom/bbm/ui/e/j;->d:Lcom/bbm/ui/FileTransferMessageView;
invoke-static {v1}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v4, v1}, Lcom/bbm/ui/FileTransferMessageView;->setSenderText(Ljava/lang/String;)V
iget-object v1, p0, Lcom/bbm/ui/e/j;->d:Lcom/bbm/ui/FileTransferMessageView;
iget-wide v4, v0, Lcom/bbm/d/fg;->s:J
invoke-virtual {v1, v4, v5}, Lcom/bbm/ui/FileTransferMessageView;->setDateText(J)V
iget-object v1, p0, Lcom/bbm/ui/e/j;->a:Landroid/widget/TextView;
iget-object v4, p0, Lcom/bbm/ui/e/j;->f:Landroid/app/Activity;
invoke-static {v4, v3, v2}, Lcom/bbm/ui/e/j;->a(Landroid/content/Context;Lcom/bbm/d/fs;Lcom/bbm/d/eu;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-boolean v1, v3, Lcom/bbm/d/fs;->m:Z
if-eqz v1, :cond_74
iget-boolean v0, v0, Lcom/bbm/d/fg;->j:Z
if-eqz v0, :cond_74
iget-boolean v0, v2, Lcom/bbm/d/eu;->e:Z
if-nez v0, :cond_74
iget-object v0, p0, Lcom/bbm/ui/e/j;->d:Lcom/bbm/ui/FileTransferMessageView;
new-instance v1, Lcom/bbm/ui/e/k;
invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/e/k;-><init>(Lcom/bbm/ui/e/j;Lcom/bbm/d/eu;Lcom/bbm/d/fs;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/FileTransferMessageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
:cond_74
iget-object v0, v3, Lcom/bbm/d/fs;->l:Lcom/bbm/d/fu;
sget-object v1, Lcom/bbm/d/fu;->c:Lcom/bbm/d/fu;
if-ne v0, v1, :cond_c9
iget-object v0, p0, Lcom/bbm/ui/e/j;->e:Landroid/widget/ProgressBar;
invoke-virtual {v0, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/e/j;->e:Landroid/widget/ProgressBar;
iget-wide v1, v3, Lcom/bbm/d/fs;->b:J
long-to-int v1, v1
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
iget-object v0, p0, Lcom/bbm/ui/e/j;->e:Landroid/widget/ProgressBar;
iget-wide v1, v3, Lcom/bbm/d/fs;->p:J
long-to-int v1, v1
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V
:goto_8f
return-void
:cond_90
iget-object v4, p0, Lcom/bbm/ui/e/j;->d:Lcom/bbm/ui/FileTransferMessageView;
const v5, 0x7f020097
invoke-virtual {v4, v5}, Lcom/bbm/ui/FileTransferMessageView;->setBackgroundResource(I)V
iget-object v4, p0, Lcom/bbm/ui/e/j;->b:Landroid/widget/TextView;
invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v4, p0, Lcom/bbm/ui/e/j;->b:Landroid/widget/TextView;
iget-object v5, p0, Lcom/bbm/ui/e/j;->f:Landroid/app/Activity;
invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f0d0005
iget-wide v7, v2, Lcom/bbm/d/eu;->d:J
long-to-int v7, v7
const/4 v8, 0x1
new-array v8, v8, [Ljava/lang/Object;
iget-wide v9, v2, Lcom/bbm/d/eu;->d:J
long-to-int v9, v9
invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
aput-object v9, v8, v11
invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-boolean v4, v2, Lcom/bbm/d/eu;->c:Z
if-eqz v4, :cond_43
iget-object v4, p0, Lcom/bbm/ui/e/j;->c:Landroid/widget/TextView;
invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_43
:cond_c9
iget-object v0, p0, Lcom/bbm/ui/e/j;->e:Landroid/widget/ProgressBar;
invoke-virtual {v0, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V
goto :goto_8f
.end method