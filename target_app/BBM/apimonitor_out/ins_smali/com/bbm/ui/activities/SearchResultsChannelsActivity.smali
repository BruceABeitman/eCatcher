.class public Lcom/bbm/ui/activities/SearchResultsChannelsActivity;
.super Lcom/bbm/ui/activities/ev;
.source "SearchResultsChannelsActivity.java"
.field  a:Landroid/widget/RelativeLayout;
.field private b:Landroid/content/Context;
.field private c:Landroid/widget/EditText;
.field private d:Landroid/widget/TextView;
.field private e:Landroid/widget/ListView;
.field private f:Landroid/widget/Button;
.field private g:Landroid/widget/ImageView;
.field private h:Landroid/widget/TextView;
.field private i:Landroid/widget/RelativeLayout;
.field private j:Landroid/widget/TextView;
.field private k:Landroid/widget/ImageView;
.field private l:Landroid/widget/ProgressBar;
.field private m:Lcom/bbm/j/k;
.field private n:Ljava/lang/String;
.field private o:Lcom/bbm/ui/activities/adz;
.field private p:Lcom/bbm/j/x;
.field private q:Lcom/bbm/util/b/a;
.field private final r:Ljava/util/HashMap;
.field private final s:Ljava/util/HashMap;
.field private t:Z
.field private final u:Landroid/view/View$OnClickListener;
.method public constructor <init>()V
.registers 3
const/16 v1, 0x64
invoke-direct {p0}, Lcom/bbm/ui/activities/ev;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->n:Ljava/lang/String;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V
iput-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->r:Ljava/util/HashMap;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V
iput-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->s:Ljava/util/HashMap;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->t:Z
new-instance v0, Lcom/bbm/ui/activities/adp;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/adp;-><init>(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->u:Landroid/view/View$OnClickListener;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->d:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic a(Lcom/bbm/d/ec;)Ljava/lang/Class;
.registers 2
iget-boolean v0, p0, Lcom/bbm/d/ec;->w:Z
if-eqz v0, :cond_7
const-class v0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;
:goto_6
return-object v0
:cond_7
iget-boolean v0, p0, Lcom/bbm/d/ec;->t:Z
if-eqz v0, :cond_e
const-class v0, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;
goto :goto_6
:cond_e
const-class v0, Lcom/bbm/ui/activities/PreviewChannelActivity;
goto :goto_6
.end method
.method private a(I)V
.registers 8
const/4 v5, 0x0
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->i:Landroid/widget/RelativeLayout;
invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->a:Landroid/widget/RelativeLayout;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->h:Landroid/widget/TextView;
invoke-virtual {p0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0d0008
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v4
aput-object v4, v3, v5
invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->a(Ljava/lang/String;)V
return-void
.end method
.method private a(Ljava/lang/String;)V
.registers 6
const/4 v3, 0x0
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->n:Ljava/lang/String;
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_f
invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-eqz v0, :cond_14
:cond_f
iget-boolean v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->t:Z
if-nez v0, :cond_14
:goto_13
return-void
:cond_14
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->e:Landroid/widget/ListView;
invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V
iput-object p1, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->n:Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->d:Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->n:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
:try_start_27
iget-object v1, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->h:Landroid/widget/TextView;
const-string v2, ""
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const-string v1, "query"
iget-object v2, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->n:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v1, "searchId"
iget-object v2, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->n:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
const-string v2, "channelSearchQuery"
invoke-static {v1, v2}, Lcom/bbm/d/z;->a(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/cy;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->n:Ljava/lang/String;
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/bbm/d/a;->b(Ljava/lang/String;Z)Lcom/bbm/j/x;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->p:Lcom/bbm/j/x;
invoke-direct {p0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->b()V
new-instance v0, Lcom/bbm/ui/activities/adz;
iget-object v1, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->p:Lcom/bbm/j/x;
invoke-direct {v0, p0, v1}, Lcom/bbm/ui/activities/adz;-><init>(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;Lcom/bbm/j/x;)V
iput-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->o:Lcom/bbm/ui/activities/adz;
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->e:Landroid/widget/ListView;
iget-object v1, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->o:Lcom/bbm/ui/activities/adz;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->p:Lcom/bbm/j/x;
invoke-interface {v0}, Lcom/bbm/j/x;->b()Z
move-result v0
if-eqz v0, :cond_80
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->i:Landroid/widget/RelativeLayout;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
:try_end_80
.catch Ljava/lang/Exception; {:try_start_27 .. :try_end_80} :catch_89
:cond_80
:goto_80
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->c:Landroid/widget/EditText;
invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V
invoke-static {p0}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V
goto :goto_13
:catch_89
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "error in searching: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-array v1, v3, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_80
.end method
.method static synthetic a(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->t:Z
return p1
.end method
.method static synthetic b(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)Landroid/view/View$OnClickListener;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->u:Landroid/view/View$OnClickListener;
return-object v0
.end method
.method private b()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->m:Lcom/bbm/j/k;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->m:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
:cond_9
new-instance v0, Lcom/bbm/ui/activities/ady;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ady;-><init>(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->m:Lcom/bbm/j/k;
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->m:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
return-void
.end method
.method static synthetic b(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;Ljava/lang/String;)V
.registers 5
const/4 v2, 0x0
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->a:Landroid/widget/RelativeLayout;
invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->l:Landroid/widget/ProgressBar;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->k:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->j:Landroid/widget/TextView;
invoke-virtual {p0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f090158
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
const-string v0, "NetworkFailure"
invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
if-nez v0, :cond_3d
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->j:Landroid/widget/TextView;
const v1, 0x7f0e031d
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->k:Landroid/widget/ImageView;
new-instance v1, Lcom/bbm/ui/activities/adq;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/adq;-><init>(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:goto_3c
return-void
:cond_3d
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->j:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_3c
.end method
.method static synthetic c(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)Ljava/util/HashMap;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->r:Ljava/util/HashMap;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)Lcom/bbm/util/b/a;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->q:Lcom/bbm/util/b/a;
return-object v0
.end method
.method static synthetic e(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->b:Landroid/content/Context;
return-object v0
.end method
.method static synthetic f(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)Ljava/util/HashMap;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->s:Ljava/util/HashMap;
return-object v0
.end method
.method static synthetic g(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->g:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic h(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)Landroid/widget/EditText;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->c:Landroid/widget/EditText;
return-object v0
.end method
.method static synthetic i(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)V
.registers 4
const v0, 0x7f0a0291
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->c:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->d:Landroid/widget/TextView;
invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v1
invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_32
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->a(Ljava/lang/String;)V
:goto_31
:cond_31
return-void
:cond_32
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->c:Landroid/widget/EditText;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->c:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z
move-result v0
if-eqz v0, :cond_31
const-string v0, "input_method"
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
const/4 v1, 0x2
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->c:Landroid/widget/EditText;
iget-object v1, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->c:Landroid/widget/EditText;
invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-interface {v1}, Landroid/text/Editable;->length()I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V
goto :goto_31
.end method
.method static synthetic j(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)Lcom/bbm/j/x;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->p:Lcom/bbm/j/x;
return-object v0
.end method
.method static synthetic k(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)V
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->a:Landroid/widget/RelativeLayout;
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->l:Landroid/widget/ProgressBar;
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->k:Landroid/widget/ImageView;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->j:Landroid/widget/TextView;
invoke-virtual {p0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e0644
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->j:Landroid/widget/TextView;
invoke-virtual {p0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f09000f
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
return-void
.end method
.method static synthetic l(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->o:Lcom/bbm/ui/activities/adz;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->o:Lcom/bbm/ui/activities/adz;
invoke-virtual {v0}, Lcom/bbm/ui/activities/adz;->getCount()I
move-result v0
if-nez v0, :cond_11
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->a(I)V
:goto_10
return-void
:cond_11
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->p:Lcom/bbm/j/x;
invoke-interface {v0}, Lcom/bbm/j/x;->c()I
move-result v0
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->a(I)V
goto :goto_10
.end method
.method static synthetic m(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)Lcom/bbm/ui/activities/adz;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->o:Lcom/bbm/ui/activities/adz;
return-object v0
.end method
.method protected final e()V
.registers 1
invoke-static {p0}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->onBackPressed()V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 8
const-string v1, " + Lcom/bbm/ui/activities/SearchResultsChannelsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v5, 0x0
invoke-super {p0, p1}, Lcom/bbm/ui/activities/ev;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v1
const v0, 0x7f03004e
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->setContentView(I)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->b:Landroid/content/Context;
new-instance v0, Lcom/bbm/util/b/a;
iget-object v2, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->b:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0b00b3
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
invoke-direct {v0, p0, v2}, Lcom/bbm/util/b/a;-><init>(Landroid/app/Activity;I)V
iput-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->q:Lcom/bbm/util/b/a;
new-instance v0, Lcom/bbm/util/b/f;
invoke-direct {v0}, Lcom/bbm/util/b/f;-><init>()V
iget-object v2, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->q:Lcom/bbm/util/b/a;
invoke-virtual {v2, v0}, Lcom/bbm/util/b/a;->a(Lcom/bbm/util/b/f;)V
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->q:Lcom/bbm/util/b/a;
const/4 v2, 0x1
iput-boolean v2, v0, Lcom/bbm/util/b/a;->a:Z
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->q:Lcom/bbm/util/b/a;
iput-boolean v5, v0, Lcom/bbm/util/b/i;->j:Z
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d/a;->a:Lcom/bbm/d/a/d/c;
invoke-virtual {v0}, Lcom/bbm/d/a/d/c;->b()Landroid/graphics/drawable/Drawable;
move-result-object v0
check-cast v0, Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v0
iget-object v2, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->q:Lcom/bbm/util/b/a;
iput-object v0, v2, Lcom/bbm/util/b/i;->d:Landroid/graphics/Bitmap;
invoke-virtual {p0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v2
const/16 v0, 0x10
invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;
move-result-object v3
const v4, 0x7f03010f
const v0, 0x7f0a0516
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v3
const v0, 0x7f0a0548
invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->c:Landroid/widget/EditText;
const v0, 0x7f0a054a
invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->d:Landroid/widget/TextView;
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->d:Landroid/widget/TextView;
invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusable(Z)V
const v0, 0x7f0a0549
invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->g:Landroid/widget/ImageView;
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->g:Landroid/widget/ImageView;
new-instance v4, Lcom/bbm/ui/activities/adu;
invoke-direct {v4, p0}, Lcom/bbm/ui/activities/adu;-><init>(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)V
invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a0546
invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->f:Landroid/widget/Button;
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->f:Landroid/widget/Button;
new-instance v4, Lcom/bbm/ui/activities/adv;
invoke-direct {v4, p0}, Lcom/bbm/ui/activities/adv;-><init>(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)V
invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->c:Landroid/widget/EditText;
new-instance v4, Lcom/bbm/ui/activities/adw;
invoke-direct {v4, p0}, Lcom/bbm/ui/activities/adw;-><init>(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)V
invoke-virtual {v0, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->c:Landroid/widget/EditText;
new-instance v4, Lcom/bbm/ui/activities/adx;
invoke-direct {v4, p0}, Lcom/bbm/ui/activities/adx;-><init>(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)V
invoke-virtual {v0, v4}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V
const v0, 0x7f0a028e
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
iput-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->i:Landroid/widget/RelativeLayout;
const v0, 0x7f0a0290
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iput-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->e:Landroid/widget/ListView;
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->e:Landroid/widget/ListView;
new-instance v2, Lcom/bbm/ui/activities/adr;
invoke-direct {v2, p0}, Lcom/bbm/ui/activities/adr;-><init>(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)V
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
const v0, 0x7f0a028f
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->h:Landroid/widget/TextView;
const v0, 0x7f0a0291
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
iput-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->a:Landroid/widget/RelativeLayout;
const v0, 0x7f0a0294
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ProgressBar;
iput-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->l:Landroid/widget/ProgressBar;
const v0, 0x7f0a0293
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->k:Landroid/widget/ImageView;
const v0, 0x7f0a0292
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->j:Landroid/widget/TextView;
const-string v0, "searchId"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->a(Ljava/lang/String;)V
invoke-static {}, Lcom/bbm/util/fb;->h()Z
move-result v0
if-eqz v0, :cond_13e
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->g:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/FrameLayout$LayoutParams;
const/16 v1, 0x13
iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I
:cond_13e
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->c:Landroid/widget/EditText;
new-instance v1, Lcom/bbm/ui/activities/ads;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/ads;-><init>(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->c:Landroid/widget/EditText;
iget-object v1, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->n:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->c:Landroid/widget/EditText;
new-instance v1, Lcom/bbm/ui/activities/adt;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/adt;-><init>(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V
const-string v1, " - Lcom/bbm/ui/activities/SearchResultsChannelsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/SearchResultsChannelsActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onDestroy()V
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->q:Lcom/bbm/util/b/a;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->q:Lcom/bbm/util/b/a;
invoke-virtual {v0}, Lcom/bbm/util/b/a;->c()V
:cond_c
const-string v1, " - Lcom/bbm/ui/activities/SearchResultsChannelsActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/SearchResultsChannelsActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onPause()V
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->o:Lcom/bbm/ui/activities/adz;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->o:Lcom/bbm/ui/activities/adz;
invoke-virtual {v0}, Lcom/bbm/ui/activities/adz;->b()V
:cond_c
const-string v1, " - Lcom/bbm/ui/activities/SearchResultsChannelsActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/SearchResultsChannelsActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onResume()V
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->r:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->s:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->o:Lcom/bbm/ui/activities/adz;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->o:Lcom/bbm/ui/activities/adz;
invoke-virtual {v0}, Lcom/bbm/ui/activities/adz;->c()V
:cond_16
invoke-static {p0}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V
const-string v1, " - Lcom/bbm/ui/activities/SearchResultsChannelsActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method