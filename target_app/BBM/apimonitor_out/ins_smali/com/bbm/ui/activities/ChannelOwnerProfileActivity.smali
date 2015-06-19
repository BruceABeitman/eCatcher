.class public Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;
.super Lcom/bbm/ui/activities/ajy;
.source "ChannelOwnerProfileActivity.java"
.field private A:Ljava/lang/String;
.field private B:Ljava/lang/String;
.field private C:Ljava/lang/String;
.field private E:Ljava/lang/String;
.field private F:Lcom/bbm/j/k;
.field private G:Lcom/bbm/j/k;
.field private final H:Lcom/bbm/d/a;
.field private a:Lcom/bbm/ui/HeaderButtonActionBar;
.field private b:Landroid/widget/EditText;
.field private c:Landroid/widget/EditText;
.field private d:Landroid/widget/EditText;
.field private e:Landroid/widget/EditText;
.field private f:Landroid/widget/EditText;
.field private g:Landroid/widget/EditText;
.field private h:Landroid/widget/EditText;
.field private i:Landroid/widget/EditText;
.field private j:Landroid/widget/EditText;
.field private k:Landroid/widget/TextView;
.field private final l:Ljava/lang/String;
.field private final m:Ljava/lang/String;
.field private final n:Ljava/lang/String;
.field private final o:Ljava/lang/String;
.field private final p:Ljava/lang/String;
.field private final q:Ljava/lang/String;
.field private final r:Ljava/lang/String;
.field private final s:Ljava/lang/String;
.field private final t:Ljava/lang/String;
.field private final u:Ljava/lang/String;
.field private v:Ljava/lang/String;
.field private w:Ljava/lang/String;
.field private x:Ljava/lang/String;
.field private y:Ljava/lang/String;
.field private z:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/bbm/ui/activities/ajy;-><init>()V
const-string v0, "name"
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->l:Ljava/lang/String;
const-string v0, "businessName"
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->m:Ljava/lang/String;
const-string v0, "secondaryEmailAddress"
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->n:Ljava/lang/String;
const-string v0, "phoneNumber"
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->o:Ljava/lang/String;
const-string v0, "address"
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->p:Ljava/lang/String;
const-string v0, "street"
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->q:Ljava/lang/String;
const-string v0, "city"
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->r:Ljava/lang/String;
const-string v0, "region"
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->s:Ljava/lang/String;
const-string v0, "postalCode"
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->t:Ljava/lang/String;
const-string v0, "country"
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->u:Ljava/lang/String;
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->H:Lcom/bbm/d/a;
new-instance v0, Lcom/bbm/ui/fv;
invoke-direct {v0}, Lcom/bbm/ui/fv;-><init>()V
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->a(Lcom/bbm/ui/activities/aka;)V
new-instance v0, Lcom/bbm/ui/voice/o;
invoke-direct {v0}, Lcom/bbm/ui/voice/o;-><init>()V
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->a(Lcom/bbm/ui/activities/aka;)V
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->v:Ljava/lang/String;
return-object p1
.end method
.method static synthetic a(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;)V
.registers 6
:try_start_0
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
new-instance v1, Ljava/util/LinkedList;
invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
const-string v2, "name"
iget-object v3, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->b:Landroid/widget/EditText;
invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v2, "businessName"
iget-object v3, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->c:Landroid/widget/EditText;
invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v2, "secondaryEmailAddress"
iget-object v3, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->d:Landroid/widget/EditText;
invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v2, "phoneNumber"
iget-object v3, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->e:Landroid/widget/EditText;
invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
const-string v3, "street"
iget-object v4, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->f:Landroid/widget/EditText;
invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v3, "city"
iget-object v4, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->g:Landroid/widget/EditText;
invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v3, "region"
iget-object v4, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->h:Landroid/widget/EditText;
invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v3, "postalCode"
iget-object v4, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->i:Landroid/widget/EditText;
invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v3, "country"
iget-object v4, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->j:Landroid/widget/EditText;
invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v3, "address"
invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
const-string v3, "name"
const-string v4, "channelOwnerProfile"
invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
move-result-object v3
const-string v4, "value"
invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
const-string v2, "global"
invoke-static {v1, v2}, Lcom/bbm/d/z;->b(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/cz;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/bbm/ui/activities/NewChannelActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/4 v1, -0x1
invoke-virtual {p0, v1, v0}, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->setResult(ILandroid/content/Intent;)V
:try_end_ec
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_ec} :catch_ed
:goto_ec
return-void
:catch_ed
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_ec
.end method
.method static synthetic b(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;)Landroid/widget/EditText;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->b:Landroid/widget/EditText;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->w:Ljava/lang/String;
return-object p1
.end method
.method static synthetic c(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;)Lcom/bbm/ui/HeaderButtonActionBar;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->a:Lcom/bbm/ui/HeaderButtonActionBar;
return-object v0
.end method
.method static synthetic c(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->x:Ljava/lang/String;
return-object p1
.end method
.method static synthetic d(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;)Lcom/bbm/d/a;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->H:Lcom/bbm/d/a;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->y:Ljava/lang/String;
return-object p1
.end method
.method static synthetic e(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->v:Ljava/lang/String;
return-object v0
.end method
.method static synthetic e(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->z:Ljava/lang/String;
return-object p1
.end method
.method static synthetic f(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->w:Ljava/lang/String;
return-object v0
.end method
.method static synthetic f(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->A:Ljava/lang/String;
return-object p1
.end method
.method static synthetic g(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;)Landroid/widget/EditText;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->c:Landroid/widget/EditText;
return-object v0
.end method
.method static synthetic g(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->B:Ljava/lang/String;
return-object p1
.end method
.method static synthetic h(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->x:Ljava/lang/String;
return-object v0
.end method
.method static synthetic h(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->C:Ljava/lang/String;
return-object p1
.end method
.method static synthetic i(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;)Landroid/widget/EditText;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->d:Landroid/widget/EditText;
return-object v0
.end method
.method static synthetic i(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->E:Ljava/lang/String;
return-object p1
.end method
.method static synthetic j(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->y:Ljava/lang/String;
return-object v0
.end method
.method static synthetic k(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;)Landroid/widget/EditText;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->e:Landroid/widget/EditText;
return-object v0
.end method
.method static synthetic l(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->z:Ljava/lang/String;
return-object v0
.end method
.method static synthetic m(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;)Landroid/widget/EditText;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->f:Landroid/widget/EditText;
return-object v0
.end method
.method static synthetic n(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->A:Ljava/lang/String;
return-object v0
.end method
.method static synthetic o(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;)Landroid/widget/EditText;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->g:Landroid/widget/EditText;
return-object v0
.end method
.method static synthetic p(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->B:Ljava/lang/String;
return-object v0
.end method
.method static synthetic q(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;)Landroid/widget/EditText;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->h:Landroid/widget/EditText;
return-object v0
.end method
.method static synthetic r(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->C:Ljava/lang/String;
return-object v0
.end method
.method static synthetic s(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;)Landroid/widget/EditText;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->i:Landroid/widget/EditText;
return-object v0
.end method
.method static synthetic t(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->E:Ljava/lang/String;
return-object v0
.end method
.method static synthetic u(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;)Landroid/widget/EditText;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->j:Landroid/widget/EditText;
return-object v0
.end method
.method static synthetic v(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->k:Landroid/widget/TextView;
return-object v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 9
const-string v1, " + Lcom/bbm/ui/activities/ChannelOwnerProfileActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v6, -0x1
const/16 v5, 0x40
invoke-super {p0, p1}, Lcom/bbm/ui/activities/ajy;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030012
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->setContentView(I)V
new-instance v0, Lcom/bbm/ui/HeaderButtonActionBar;
invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e0714
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e0173
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f0e0638
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v0, p0, v1, v2, v3}, Lcom/bbm/ui/HeaderButtonActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->a:Lcom/bbm/ui/HeaderButtonActionBar;
invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->a:Lcom/bbm/ui/HeaderButtonActionBar;
new-instance v2, Landroid/app/ActionBar$LayoutParams;
invoke-direct {v2, v6, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
const/16 v1, 0x10
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->a:Lcom/bbm/ui/HeaderButtonActionBar;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->a:Lcom/bbm/ui/HeaderButtonActionBar;
new-instance v1, Lcom/bbm/ui/activities/cy;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/cy;-><init>(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->a:Lcom/bbm/ui/HeaderButtonActionBar;
new-instance v1, Lcom/bbm/ui/activities/cz;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/cz;-><init>(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a010b
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->b:Landroid/widget/EditText;
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->b:Landroid/widget/EditText;
invoke-static {v0, v5}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;
new-instance v0, Lcom/bbm/ui/activities/da;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/da;-><init>(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;)V
iget-object v1, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->b:Landroid/widget/EditText;
invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
const v0, 0x7f0a010d
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->c:Landroid/widget/EditText;
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->c:Landroid/widget/EditText;
invoke-static {v0, v5}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;
const v0, 0x7f0a010f
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->d:Landroid/widget/EditText;
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->d:Landroid/widget/EditText;
invoke-static {v0, v5}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;
const v0, 0x7f0a0110
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->e:Landroid/widget/EditText;
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->e:Landroid/widget/EditText;
invoke-static {v0, v5}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;
const v0, 0x7f0a0112
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->f:Landroid/widget/EditText;
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->f:Landroid/widget/EditText;
invoke-static {v0, v5}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;
const v0, 0x7f0a0113
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->g:Landroid/widget/EditText;
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->g:Landroid/widget/EditText;
invoke-static {v0, v5}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;
const v0, 0x7f0a0114
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->h:Landroid/widget/EditText;
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->h:Landroid/widget/EditText;
invoke-static {v0, v5}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;
const v0, 0x7f0a0115
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->i:Landroid/widget/EditText;
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->i:Landroid/widget/EditText;
invoke-static {v0, v5}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;
const v0, 0x7f0a0116
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->j:Landroid/widget/EditText;
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->j:Landroid/widget/EditText;
invoke-static {v0, v5}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;
const v0, 0x7f0a010e
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->k:Landroid/widget/TextView;
new-instance v0, Lcom/bbm/ui/activities/db;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/db;-><init>(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->F:Lcom/bbm/j/k;
new-instance v0, Lcom/bbm/ui/activities/dc;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/dc;-><init>(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->G:Lcom/bbm/j/k;
const-string v1, " - Lcom/bbm/ui/activities/ChannelOwnerProfileActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/ChannelOwnerProfileActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onPause()V
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->F:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->G:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
const-string v1, " - Lcom/bbm/ui/activities/ChannelOwnerProfileActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/ChannelOwnerProfileActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onResume()V
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->F:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->G:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
const-string v1, " - Lcom/bbm/ui/activities/ChannelOwnerProfileActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method