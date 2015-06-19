.class public Lcom/twidroid/c/m;
.super Landroid/app/Dialog;
.source "SourceFile"
.field private static final a:Ljava/lang/String; = "DirectMessageDialog"
.field private b:Landroid/app/Activity;
.field private c:Ljava/util/ArrayList;
.field private d:Lcom/twidroid/model/twitter/DirectMessage;
.field private e:Lcom/twidroid/net/c/a/f;
.field private f:Lcom/twidroid/b/a/b;
.field private g:Landroid/widget/ListAdapter;
.method public constructor <init>(Landroid/app/Activity;Lcom/twidroid/model/twitter/DirectMessage;Lcom/twidroid/net/c/a/f;)V
.registers 5
invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V
iput-object p1, p0, Lcom/twidroid/c/m;->b:Landroid/app/Activity;
iput-object p2, p0, Lcom/twidroid/c/m;->d:Lcom/twidroid/model/twitter/DirectMessage;
iput-object p3, p0, Lcom/twidroid/c/m;->e:Lcom/twidroid/net/c/a/f;
iget-object v0, p0, Lcom/twidroid/c/m;->b:Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/c/m;->f:Lcom/twidroid/b/a/b;
return-void
.end method
.method static synthetic a(Lcom/twidroid/c/m;)Lcom/twidroid/model/twitter/DirectMessage;
.registers 2
iget-object v0, p0, Lcom/twidroid/c/m;->d:Lcom/twidroid/model/twitter/DirectMessage;
return-object v0
.end method
.method static synthetic b(Lcom/twidroid/c/m;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/c/m;->f:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic c(Lcom/twidroid/c/m;)Landroid/app/Activity;
.registers 2
iget-object v0, p0, Lcom/twidroid/c/m;->b:Landroid/app/Activity;
return-object v0
.end method
.method static synthetic d(Lcom/twidroid/c/m;)Lcom/twidroid/net/c/a/f;
.registers 2
iget-object v0, p0, Lcom/twidroid/c/m;->e:Lcom/twidroid/net/c/a/f;
return-object v0
.end method
.method static synthetic e(Lcom/twidroid/c/m;)Landroid/widget/ListAdapter;
.registers 2
iget-object v0, p0, Lcom/twidroid/c/m;->g:Landroid/widget/ListAdapter;
return-object v0
.end method
.method public a(Landroid/widget/LinearLayout;)V
.registers 14
const v11, 0x7f03008c
const v10, 0x7f0200fa
const/4 v1, 0x0
const/4 v8, 0x1
const/4 v9, 0x0
invoke-virtual {p0}, Lcom/twidroid/c/m;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v4
iget-object v0, p0, Lcom/twidroid/c/m;->d:Lcom/twidroid/model/twitter/DirectMessage;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/DirectMessage;->o()Lcom/twidroid/ui/StringUrlSpan;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/StringUrlSpan;->b()[Landroid/text/style/URLSpan;
move-result-object v3
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twidroid/c/m;->c:Ljava/util/ArrayList;
array-length v5, v3
move v2, v1
:goto_24
if-ge v2, v5, :cond_4b
aget-object v0, v3, v2
instance-of v6, v0, Lcom/ubermedia/ui/StringSpanInfo;
if-eqz v6, :cond_47
check-cast v0, Lcom/ubermedia/ui/StringSpanInfo;
sget-object v6, Lcom/ubermedia/ui/b;->o:Ljava/util/regex/Pattern;
invoke-virtual {v0}, Lcom/ubermedia/ui/StringSpanInfo;->getURL()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v6
invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z
move-result v6
if-eqz v6, :cond_47
iget-object v6, p0, Lcom/twidroid/c/m;->c:Ljava/util/ArrayList;
invoke-virtual {v0}, Lcom/ubermedia/ui/StringSpanInfo;->getURL()Ljava/lang/String;
move-result-object v0
invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_47
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_24
:cond_4b
sget-object v0, Lcom/twidroid/b/a/b;->o:Ljava/util/regex/Pattern;
iget-object v2, p0, Lcom/twidroid/c/m;->d:Lcom/twidroid/model/twitter/DirectMessage;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/DirectMessage;->o()Lcom/twidroid/ui/StringUrlSpan;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v0
:goto_57
invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
move-result v2
if-eqz v2, :cond_75
invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-le v2, v8, :cond_75
iget-object v2, p0, Lcom/twidroid/c/m;->c:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_57
:cond_75
sget-object v0, Lcom/twidroid/d/k;->a:Ljava/util/regex/Pattern;
iget-object v2, p0, Lcom/twidroid/c/m;->d:Lcom/twidroid/model/twitter/DirectMessage;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/DirectMessage;->o()Lcom/twidroid/ui/StringUrlSpan;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v0
:goto_81
invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
move-result v2
if-eqz v2, :cond_9f
invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-le v2, v8, :cond_9f
iget-object v2, p0, Lcom/twidroid/c/m;->c:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_81
:cond_9f
sget-object v0, Lcom/ubermedia/ui/b;->s:Ljava/util/regex/Pattern;
iget-object v2, p0, Lcom/twidroid/c/m;->d:Lcom/twidroid/model/twitter/DirectMessage;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/DirectMessage;->o()Lcom/twidroid/ui/StringUrlSpan;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v0
:goto_ab
invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
move-result v2
if-eqz v2, :cond_c9
invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-le v2, v8, :cond_c9
iget-object v2, p0, Lcom/twidroid/c/m;->c:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_ab
:cond_c9
sget-object v0, Lcom/ubermedia/ui/b;->t:Ljava/util/regex/Pattern;
iget-object v2, p0, Lcom/twidroid/c/m;->d:Lcom/twidroid/model/twitter/DirectMessage;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/DirectMessage;->n()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v0
:goto_d5
invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
move-result v2
if-eqz v2, :cond_f3
invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-le v2, v8, :cond_f3
iget-object v2, p0, Lcom/twidroid/c/m;->c:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_d5
:cond_f3
invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V
iget-object v0, p0, Lcom/twidroid/c/m;->c:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;
move-result-object v5
array-length v6, v5
move v3, v1
:goto_fe
if-ge v3, v6, :cond_1e1
aget-object v2, v5, v3
invoke-virtual {v4, v11, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
const-string v7, "DirectMessageDialog"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Button: "
invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
move-object v1, v2
check-cast v1, Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
move-object v1, v2
check-cast v1, Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
move-object v1, v2
check-cast v1, Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
const-string v7, "@"
invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_1cd
invoke-virtual {p0}, Lcom/twidroid/c/m;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v7, 0x7f0201cd
invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1, v9, v9, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
:goto_152
new-instance v1, Lcom/twidroid/c/m$1;
invoke-direct {v1, p0}, Lcom/twidroid/c/m$1;-><init>(Lcom/twidroid/c/m;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
new-instance v0, Landroid/view/View;
invoke-virtual {p0}, Lcom/twidroid/c/m;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V
const v1, 0x7f0900a0
invoke-virtual {p0, v1}, Lcom/twidroid/c/m;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v0, v10}, Landroid/view/View;->setBackgroundResource(I)V
invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V
check-cast v2, Ljava/lang/String;
const/16 v0, 0xc8
invoke-static {v2, v0}, Lcom/twidroid/d/m;->a(Ljava/lang/String;I)Lcom/twidroid/d/n;
move-result-object v1
if-eqz v1, :cond_1c8
sget-object v0, Lcom/twidroid/d/m;->z:Lcom/twidroid/d/n;
if-eq v1, v0, :cond_1c8
invoke-virtual {v4, v11, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iget-object v2, p0, Lcom/twidroid/c/m;->b:Landroid/app/Activity;
const v7, 0x7f0c01ac
invoke-static {v2, v7}, Lcom/twidroid/d/h;->b(Landroid/content/Context;I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
new-instance v2, Lcom/twidroid/c/m$2;
invoke-direct {v2, p0, v1}, Lcom/twidroid/c/m$2;-><init>(Lcom/twidroid/c/m;Lcom/twidroid/d/n;)V
invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
new-instance v0, Landroid/view/View;
invoke-virtual {p0}, Lcom/twidroid/c/m;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V
const v1, 0x7f0900a0
invoke-virtual {p0, v1}, Lcom/twidroid/c/m;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v0, v10}, Landroid/view/View;->setBackgroundResource(I)V
invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V
:cond_1c8
add-int/lit8 v0, v3, 0x1
move v3, v0
goto/16 :goto_fe
:cond_1cd
invoke-virtual {p0}, Lcom/twidroid/c/m;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v7, 0x7f0201cb
invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1, v9, v9, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
goto/16 :goto_152
:cond_1e1
return-void
.end method
.method public a(Landroid/widget/ListAdapter;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/c/m;->g:Landroid/widget/ListAdapter;
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/twidroid/c/m; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030037
invoke-virtual {p0, v0}, Lcom/twidroid/c/m;->setContentView(I)V
const v0, 0x7f0c0108
invoke-virtual {p0, v0}, Lcom/twidroid/c/m;->setTitle(I)V
const-string v1, " - Lcom/twidroid/c/m; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStart()V
.registers 4
const-string v1, " + Lcom/twidroid/c/m; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v0, 0x7f09009a
invoke-virtual {p0, v0}, Lcom/twidroid/c/m;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
invoke-virtual {p0, v0}, Lcom/twidroid/c/m;->a(Landroid/widget/LinearLayout;)V
const v0, 0x7f0900a1
:try_start_f
invoke-virtual {p0, v0}, Lcom/twidroid/c/m;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
new-instance v1, Lcom/twidroid/c/m$3;
invoke-direct {v1, p0}, Lcom/twidroid/c/m$3;-><init>(Lcom/twidroid/c/m;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v1, 0x7f0900a6
invoke-virtual {p0, v1}, Lcom/twidroid/c/m;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/Button;
new-instance v2, Lcom/twidroid/c/m$4;
invoke-direct {v2, p0}, Lcom/twidroid/c/m$4;-><init>(Lcom/twidroid/c/m;)V
invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v1, 0x7f0900aa
invoke-virtual {p0, v1}, Lcom/twidroid/c/m;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/Button;
new-instance v2, Lcom/twidroid/c/m$5;
invoke-direct {v2, p0}, Lcom/twidroid/c/m$5;-><init>(Lcom/twidroid/c/m;)V
invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v1, 0x7f090097
invoke-virtual {p0, v1}, Lcom/twidroid/c/m;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/Button;
new-instance v2, Lcom/twidroid/c/m$6;
invoke-direct {v2, p0}, Lcom/twidroid/c/m$6;-><init>(Lcom/twidroid/c/m;)V
invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v1, p0, Lcom/twidroid/c/m;->f:Lcom/twidroid/b/a/b;
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/c/m;->d:Lcom/twidroid/model/twitter/DirectMessage;
iget-object v2, v2, Lcom/twidroid/model/twitter/DirectMessage;->A:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_86
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
const v0, 0x7f0900a0
invoke-virtual {p0, v0}, Lcom/twidroid/c/m;->findViewById(I)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
const v0, 0x7f0900b0
invoke-virtual {p0, v0}, Lcom/twidroid/c/m;->findViewById(I)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:goto_85
const-string v1, " - Lcom/twidroid/c/m; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_86
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
const v0, 0x7f0900a0
invoke-virtual {p0, v0}, Lcom/twidroid/c/m;->findViewById(I)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
const v0, 0x7f0900b0
invoke-virtual {p0, v0}, Lcom/twidroid/c/m;->findViewById(I)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:try_end_a0
.catch Ljava/lang/Exception; {:try_start_f .. :try_end_a0} :catch_a1
goto :goto_85
:catch_a1
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_85
.end method