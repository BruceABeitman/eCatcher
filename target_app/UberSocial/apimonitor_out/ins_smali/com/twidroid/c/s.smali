.class public Lcom/twidroid/c/s;
.super Landroid/app/Dialog;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field private static d:Lcom/twidroid/b/a/b; = null
.field private static m:Ljava/lang/String; = null
.field private static n:Ljava/lang/String; = null
.field private static o:Ljava/lang/String; = null
.field private static p:Ljava/lang/String; = null
.field private static q:Ljava/lang/String; = null
.field private static r:Ljava/lang/String; = null
.field private static s:Ljava/lang/String; = null
.field private static t:Ljava/lang/String; = null
.field private static final u:Ljava/lang/String; = "TweetActionsDialog"
.field  a:Landroid/app/Activity;
.field  b:Landroid/widget/LinearLayout;
.field private c:Lcom/twidroid/UberSocialApplication;
.field private e:Lcom/twidroid/model/twitter/c;
.field private f:Lcom/twidroid/ui/a/am;
.field private g:Landroid/support/v4/app/Fragment;
.field private h:Lcom/twidroid/model/twitter/Tweet;
.field private i:Lcom/twidroid/net/c/a/f;
.field private j:Z
.field private k:Z
.field private l:Z
.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;)V
.registers 5
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-direct {p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/twidroid/c/s;->l:Z
iput-object p3, p0, Lcom/twidroid/c/s;->i:Lcom/twidroid/net/c/a/f;
iput-object p2, p0, Lcom/twidroid/c/s;->h:Lcom/twidroid/model/twitter/Tweet;
iput-object p1, p0, Lcom/twidroid/c/s;->g:Landroid/support/v4/app/Fragment;
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/twidroid/UberSocialApplication;
iput-object v0, p0, Lcom/twidroid/c/s;->c:Lcom/twidroid/UberSocialApplication;
iget-object v0, p0, Lcom/twidroid/c/s;->c:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
sput-object v0, Lcom/twidroid/c/s;->d:Lcom/twidroid/b/a/b;
sget-object v0, Lcom/twidroid/c/s;->d:Lcom/twidroid/b/a/b;
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/c/s;->e:Lcom/twidroid/model/twitter/c;
return-void
.end method
.method static synthetic a()Lcom/twidroid/b/a/b;
.registers 1
sget-object v0, Lcom/twidroid/c/s;->d:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic a(Lcom/twidroid/c/s;)Lcom/twidroid/model/twitter/Tweet;
.registers 2
iget-object v0, p0, Lcom/twidroid/c/s;->h:Lcom/twidroid/model/twitter/Tweet;
return-object v0
.end method
.method static synthetic b(Lcom/twidroid/c/s;)Landroid/support/v4/app/Fragment;
.registers 2
iget-object v0, p0, Lcom/twidroid/c/s;->g:Landroid/support/v4/app/Fragment;
return-object v0
.end method
.method public onClick(Landroid/view/View;)V
.registers 15
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/c/s; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v5, -0x1
const/4 v6, 0x0
const/4 v2, 0x0
const/4 v3, 0x1
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/c/v;
iget-object v0, v0, Lcom/twidroid/c/v;->a:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
sget-object v1, Lcom/twidroid/c/s;->m:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_14b
sget-object v0, Lcom/twidroid/c/s;->d:Lcom/twidroid/b/a/b;
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v4
move v1, v2
:goto_23
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_40
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/c;
iget-object v7, p0, Lcom/twidroid/c/s;->h:Lcom/twidroid/model/twitter/Tweet;
iget-object v7, v7, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v0
invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2e9
move v0, v3
:goto_3e
move v1, v0
goto :goto_23
:cond_40
if-eqz v1, :cond_ae
const-string v0, ""
:goto_44
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
sget-object v1, Lcom/twidroid/b/a/b;->o:Ljava/util/regex/Pattern;
iget-object v4, p0, Lcom/twidroid/c/s;->h:Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v4}, Lcom/twidroid/model/twitter/Tweet;->n()Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v7
move-object v1, v0
:goto_5b
invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z
move-result v0
if-eqz v0, :cond_f1
invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-le v0, v3, :cond_f1
invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;
move-result-object v8
sget-object v0, Lcom/twidroid/c/s;->d:Lcom/twidroid/b/a/b;
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v9
move v4, v2
:goto_7e
invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_cd
invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/c;
invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v10
new-instance v11, Ljava/lang/StringBuilder;
invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
const-string v12, "@"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v0
invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2e6
move v0, v3
:goto_ac
move v4, v0
goto :goto_7e
:cond_ae
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "@"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/c/s;->h:Lcom/twidroid/model/twitter/Tweet;
iget-object v1, v1, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_44
:cond_cd
if-nez v4, :cond_2e3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_ee
move-object v1, v0
goto/16 :goto_5b
:cond_f1
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
iget-object v0, p0, Lcom/twidroid/c/s;->g:Landroid/support/v4/app/Fragment;
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v2, p0, Lcom/twidroid/c/s;->h:Lcom/twidroid/model/twitter/Tweet;
iget-wide v2, v2, Lcom/twidroid/model/twitter/Tweet;->x:J
iget-object v4, p0, Lcom/twidroid/c/s;->h:Lcom/twidroid/model/twitter/Tweet;
iget v4, v4, Lcom/twidroid/model/twitter/Tweet;->aB:I
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "@"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
iget-object v8, p0, Lcom/twidroid/c/s;->h:Lcom/twidroid/model/twitter/Tweet;
iget-object v8, v8, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, ": "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
iget-object v8, p0, Lcom/twidroid/c/s;->h:Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v8}, Lcom/twidroid/model/twitter/Tweet;->n()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static/range {v0 .. v7}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;JIILjava/lang/String;Ljava/lang/String;)V
const-string v0, "tweet"
const-string v1, "reply_all"
invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/twidroid/c/s;->dismiss()V
:cond_14a
:goto_14a
const-string v1, " - Lcom/twidroid/c/s; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_14b
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/c/v;
iget-object v0, v0, Lcom/twidroid/c/v;->a:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
sget-object v1, Lcom/twidroid/c/s;->n:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1a5
iget-object v0, p0, Lcom/twidroid/c/s;->h:Lcom/twidroid/model/twitter/Tweet;
if-eqz v0, :cond_14a
iget-object v0, p0, Lcom/twidroid/c/s;->g:Landroid/support/v4/app/Fragment;
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "RT @"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/c/s;->h:Lcom/twidroid/model/twitter/Tweet;
iget-object v2, v2, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/c/s;->h:Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/Tweet;->p()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const-wide/16 v2, -0x1
iget-object v4, p0, Lcom/twidroid/c/s;->h:Lcom/twidroid/model/twitter/Tweet;
iget v4, v4, Lcom/twidroid/model/twitter/Tweet;->aB:I
move-object v7, v6
invoke-static/range {v0 .. v7}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;JIILjava/lang/String;Ljava/lang/String;)V
const-string v0, "tweet"
const-string v1, "retweet_with_comment"
invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/twidroid/c/s;->dismiss()V
goto :goto_14a
:cond_1a5
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/c/v;
iget-object v0, v0, Lcom/twidroid/c/v;->a:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
sget-object v1, Lcom/twidroid/c/s;->o:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1fb
sget-object v0, Lcom/twidroid/c/s;->d:Lcom/twidroid/b/a/b;
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v1
if-le v1, v3, :cond_1d8
new-instance v1, Lcom/twidroid/c/s$1;
iget-object v2, p0, Lcom/twidroid/c/s;->g:Landroid/support/v4/app/Fragment;
invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-direct {v1, p0, v2, v0}, Lcom/twidroid/c/s$1;-><init>(Lcom/twidroid/c/s;Landroid/app/Activity;Ljava/util/ArrayList;)V
invoke-virtual {v1}, Lcom/twidroid/c/s$1;->show()V
:goto_1d3
:cond_1d3
invoke-virtual {p0}, Lcom/twidroid/c/s;->dismiss()V
goto/16 :goto_14a
:cond_1d8
:try_start_1d8
iget-object v0, p0, Lcom/twidroid/c/s;->h:Lcom/twidroid/model/twitter/Tweet;
if-eqz v0, :cond_1d3
iget-object v0, p0, Lcom/twidroid/c/s;->g:Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_1d3
iget-object v0, p0, Lcom/twidroid/c/s;->g:Landroid/support/v4/app/Fragment;
check-cast v0, Lcom/twidroid/fragments/f;
iget-object v1, p0, Lcom/twidroid/c/s;->h:Lcom/twidroid/model/twitter/Tweet;
iget-object v1, v1, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;
iget-object v2, p0, Lcom/twidroid/c/s;->h:Lcom/twidroid/model/twitter/Tweet;
iget-object v2, v2, Lcom/twidroid/model/twitter/Tweet;->az:Lcom/twidroid/model/twitter/User;
iget-wide v2, v2, Lcom/twidroid/model/twitter/User;->b:J
invoke-virtual {v0, v1, v2, v3}, Lcom/twidroid/fragments/f;->a(Ljava/lang/String;J)V
:try_end_1f1
.catch Ljava/lang/Exception; {:try_start_1d8 .. :try_end_1f1} :catch_1f2
goto :goto_1d3
:catch_1f2
move-exception v0
const-string v1, "TweetActionsDialog"
const-string v2, "NPE"
invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_1d3
:cond_1fb
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/c/v;
iget-object v0, v0, Lcom/twidroid/c/v;->a:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
sget-object v1, Lcom/twidroid/c/s;->p:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_225
iget-object v0, p0, Lcom/twidroid/c/s;->g:Landroid/support/v4/app/Fragment;
check-cast v0, Lcom/twidroid/fragments/f;
iget-object v1, p0, Lcom/twidroid/c/s;->h:Lcom/twidroid/model/twitter/Tweet;
iget-object v1, v1, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;
iget-object v2, p0, Lcom/twidroid/c/s;->h:Lcom/twidroid/model/twitter/Tweet;
iget-object v2, v2, Lcom/twidroid/model/twitter/Tweet;->az:Lcom/twidroid/model/twitter/User;
iget-wide v2, v2, Lcom/twidroid/model/twitter/User;->b:J
invoke-virtual {v0, v1, v2, v3}, Lcom/twidroid/fragments/f;->b(Ljava/lang/String;J)V
invoke-virtual {p0}, Lcom/twidroid/c/s;->dismiss()V
goto/16 :goto_14a
:cond_225
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/c/v;
iget-object v0, v0, Lcom/twidroid/c/v;->a:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
sget-object v1, Lcom/twidroid/c/s;->q:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_245
iget-object v0, p0, Lcom/twidroid/c/s;->g:Landroid/support/v4/app/Fragment;
check-cast v0, Lcom/twidroid/fragments/f;
invoke-virtual {v0}, Lcom/twidroid/fragments/f;->o()V
invoke-virtual {p0}, Lcom/twidroid/c/s;->dismiss()V
goto/16 :goto_14a
:cond_245
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/c/v;
iget-object v0, v0, Lcom/twidroid/c/v;->a:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
sget-object v1, Lcom/twidroid/c/s;->r:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_271
iget-object v0, p0, Lcom/twidroid/c/s;->g:Landroid/support/v4/app/Fragment;
check-cast v0, Lcom/twidroid/fragments/f;
iget-object v1, p0, Lcom/twidroid/c/s;->h:Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v1}, Lcom/twidroid/model/twitter/Tweet;->f()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/c/s;->h:Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/Tweet;->h()J
move-result-wide v2
invoke-virtual {v0, v1, v2, v3}, Lcom/twidroid/fragments/f;->d(Ljava/lang/String;J)V
invoke-virtual {p0}, Lcom/twidroid/c/s;->dismiss()V
goto/16 :goto_14a
:cond_271
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/c/v;
iget-object v0, v0, Lcom/twidroid/c/v;->a:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
sget-object v1, Lcom/twidroid/c/s;->s:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2aa
iget-object v0, p0, Lcom/twidroid/c/s;->g:Landroid/support/v4/app/Fragment;
check-cast v0, Lcom/twidroid/fragments/f;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "@"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/c/s;->h:Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/Tweet;->f()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, v3}, Lcom/twidroid/fragments/f;->a(Ljava/lang/String;Z)V
invoke-virtual {p0}, Lcom/twidroid/c/s;->dismiss()V
goto/16 :goto_14a
:cond_2aa
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/c/v;
iget-object v0, v0, Lcom/twidroid/c/v;->a:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
sget-object v1, Lcom/twidroid/c/s;->t:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_14a
iget-object v0, p0, Lcom/twidroid/c/s;->g:Landroid/support/v4/app/Fragment;
check-cast v0, Lcom/twidroid/fragments/f;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "@"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v3, p0, Lcom/twidroid/c/s;->h:Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v3}, Lcom/twidroid/model/twitter/Tweet;->f()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, v2}, Lcom/twidroid/fragments/f;->a(Ljava/lang/String;Z)V
invoke-virtual {p0}, Lcom/twidroid/c/s;->dismiss()V
goto/16 :goto_14a
:cond_2e3
move-object v0, v1
goto/16 :goto_ee
:cond_2e6
move v0, v4
goto/16 :goto_ac
:cond_2e9
move v0, v1
goto/16 :goto_3e
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 9
const-string v1, " + Lcom/twidroid/c/s; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v6, 0x1
const/4 v5, 0x0
invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030033
invoke-virtual {p0, v0}, Lcom/twidroid/c/s;->setContentView(I)V
iget-object v0, p0, Lcom/twidroid/c/s;->g:Landroid/support/v4/app/Fragment;
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v1, 0x7f0c00ec
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/twidroid/c/s;->setTitle(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/twidroid/c/s;->g:Landroid/support/v4/app/Fragment;
const v1, 0x7f0c00f1
invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/twidroid/c/s;->m:Ljava/lang/String;
iget-object v0, p0, Lcom/twidroid/c/s;->g:Landroid/support/v4/app/Fragment;
const v1, 0x7f0c00f4
invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/twidroid/c/s;->n:Ljava/lang/String;
iget-object v0, p0, Lcom/twidroid/c/s;->g:Landroid/support/v4/app/Fragment;
const v1, 0x7f0c01c2
new-array v2, v6, [Ljava/lang/Object;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "@"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/twidroid/c/s;->h:Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v4}, Lcom/twidroid/model/twitter/Tweet;->f()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v5
invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/twidroid/c/s;->o:Ljava/lang/String;
iget-object v0, p0, Lcom/twidroid/c/s;->g:Landroid/support/v4/app/Fragment;
const v1, 0x7f0c01cb
invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/twidroid/c/s;->p:Ljava/lang/String;
iget-object v0, p0, Lcom/twidroid/c/s;->g:Landroid/support/v4/app/Fragment;
const v1, 0x7f0c01ac
invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/twidroid/c/s;->q:Ljava/lang/String;
iget-object v0, p0, Lcom/twidroid/c/s;->g:Landroid/support/v4/app/Fragment;
const v1, 0x7f0c01da
new-array v2, v6, [Ljava/lang/Object;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "@"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/twidroid/c/s;->h:Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v4}, Lcom/twidroid/model/twitter/Tweet;->f()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v5
invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/twidroid/c/s;->r:Ljava/lang/String;
iget-object v0, p0, Lcom/twidroid/c/s;->g:Landroid/support/v4/app/Fragment;
const v1, 0x7f0c01b9
new-array v2, v6, [Ljava/lang/Object;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "@"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/twidroid/c/s;->h:Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v4}, Lcom/twidroid/model/twitter/Tweet;->f()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v5
invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/twidroid/c/s;->s:Ljava/lang/String;
iget-object v0, p0, Lcom/twidroid/c/s;->g:Landroid/support/v4/app/Fragment;
const v1, 0x7f0c01db
new-array v2, v6, [Ljava/lang/Object;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "@"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/twidroid/c/s;->h:Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v4}, Lcom/twidroid/model/twitter/Tweet;->f()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v5
invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/twidroid/c/s;->t:Ljava/lang/String;
const/16 v0, 0x8
new-array v0, v0, [Ljava/lang/String;
sget-object v1, Lcom/twidroid/c/s;->m:Ljava/lang/String;
aput-object v1, v0, v5
sget-object v1, Lcom/twidroid/c/s;->n:Ljava/lang/String;
aput-object v1, v0, v6
const/4 v1, 0x2
sget-object v2, Lcom/twidroid/c/s;->r:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x3
sget-object v2, Lcom/twidroid/c/s;->s:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x4
sget-object v2, Lcom/twidroid/c/s;->t:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x5
sget-object v2, Lcom/twidroid/c/s;->o:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x6
sget-object v2, Lcom/twidroid/c/s;->p:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x7
sget-object v2, Lcom/twidroid/c/s;->q:Ljava/lang/String;
aput-object v2, v0, v1
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
iget-object v0, p0, Lcom/twidroid/c/s;->g:Landroid/support/v4/app/Fragment;
check-cast v0, Lcom/twidroid/fragments/f;
invoke-virtual {v0}, Lcom/twidroid/fragments/f;->l()Z
move-result v0
iput-boolean v0, p0, Lcom/twidroid/c/s;->j:Z
iget-object v0, p0, Lcom/twidroid/c/s;->g:Landroid/support/v4/app/Fragment;
check-cast v0, Lcom/twidroid/fragments/f;
invoke-virtual {v0}, Lcom/twidroid/fragments/f;->m()Z
move-result v0
iput-boolean v0, p0, Lcom/twidroid/c/s;->k:Z
iget-boolean v0, p0, Lcom/twidroid/c/s;->k:Z
if-nez v0, :cond_1a8
iget-object v0, p0, Lcom/twidroid/c/s;->h:Lcom/twidroid/model/twitter/Tweet;
if-eqz v0, :cond_1a8
iget-boolean v0, p0, Lcom/twidroid/c/s;->j:Z
if-eqz v0, :cond_19c
sget-object v0, Lcom/twidroid/c/s;->o:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
:goto_13f
iget-object v0, p0, Lcom/twidroid/c/s;->g:Landroid/support/v4/app/Fragment;
check-cast v0, Lcom/twidroid/fragments/f;
invoke-virtual {v0}, Lcom/twidroid/fragments/f;->q()I
move-result v0
if-nez v0, :cond_14e
sget-object v0, Lcom/twidroid/c/s;->r:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
:cond_14e
invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;
move-result-object v0
iget-object v2, p0, Lcom/twidroid/c/s;->h:Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/Tweet;->f()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/twidroid/c/s;->e:Lcom/twidroid/model/twitter/c;
invoke-virtual {v3}, Lcom/twidroid/model/twitter/c;->p()I
move-result v3
invoke-virtual {v0, v2, v3}, Lcom/twidroid/b/a/b;->b(Ljava/lang/String;I)Z
move-result v0
if-eqz v0, :cond_1a2
sget-object v0, Lcom/twidroid/c/s;->s:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
:goto_169
iget-object v0, p0, Lcom/twidroid/c/s;->h:Lcom/twidroid/model/twitter/Tweet;
iget-boolean v0, v0, Lcom/twidroid/model/twitter/Tweet;->au:Z
if-nez v0, :cond_174
sget-object v0, Lcom/twidroid/c/s;->n:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
:cond_174
iget-object v0, p0, Lcom/twidroid/c/s;->h:Lcom/twidroid/model/twitter/Tweet;
invoke-static {v0}, Lcom/twidroid/model/twitter/CommunicationEntity;->b(Lcom/twidroid/model/twitter/CommunicationEntity;)Lcom/twidroid/d/n;
move-result-object v0
if-eqz v0, :cond_180
sget-object v2, Lcom/twidroid/d/m;->z:Lcom/twidroid/d/n;
if-ne v0, v2, :cond_185
:cond_180
sget-object v0, Lcom/twidroid/c/s;->q:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
:cond_185
const v0, 0x7f0900ac
invoke-virtual {p0, v0}, Lcom/twidroid/c/s;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
new-instance v2, Lcom/twidroid/c/u;
iget-object v3, p0, Lcom/twidroid/c/s;->g:Landroid/support/v4/app/Fragment;
const v4, 0x7f030092
invoke-direct {v2, v3, v4, v1, p0}, Lcom/twidroid/c/u;-><init>(Landroid/support/v4/app/Fragment;ILjava/util/ArrayList;Landroid/view/View$OnClickListener;)V
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
const-string v1, " - Lcom/twidroid/c/s; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_19c
sget-object v0, Lcom/twidroid/c/s;->p:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_13f
:cond_1a2
sget-object v0, Lcom/twidroid/c/s;->t:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_169
:cond_1a8
sget-object v0, Lcom/twidroid/c/s;->o:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
sget-object v0, Lcom/twidroid/c/s;->p:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
sget-object v0, Lcom/twidroid/c/s;->r:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
sget-object v0, Lcom/twidroid/c/s;->s:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
sget-object v0, Lcom/twidroid/c/s;->t:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_169
.end method