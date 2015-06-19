.class public Lcom/bbm/ui/activities/ChannelSettingsActivity;
.super Lcom/bbm/ui/activities/cn;
.source "ChannelSettingsActivity.java"


# instance fields
.field private final a:Lcom/bbm/d;

.field private final b:Lcom/bbm/d/a;

.field private final c:Lcom/bbm/j/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/a",
            "<",
            "Lcom/bbm/d/ec;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Lorg/json/JSONArray;

.field private g:Z

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/Switch;

.field private j:Landroid/widget/Switch;

.field private k:Landroid/widget/Switch;

.field private l:Landroid/widget/Switch;

.field private m:Landroid/widget/Switch;

.field private n:Landroid/widget/TextView;

.field private final o:Lcom/bbm/j/k;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/bbm/ui/activities/cn;-><init>()V

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->a:Lcom/bbm/d;

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->a:Lcom/bbm/d;

    iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->b:Lcom/bbm/d/a;

    new-instance v0, Lcom/bbm/ui/activities/ed;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ed;-><init>(Lcom/bbm/ui/activities/ChannelSettingsActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->c:Lcom/bbm/j/a;

    iput-boolean v1, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->e:Z

    new-instance v0, Lcom/bbm/ui/activities/ee;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ee;-><init>(Lcom/bbm/ui/activities/ChannelSettingsActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->o:Lcom/bbm/j/k;

    iput-boolean v1, p0, Lcom/bbm/ui/activities/ev;->y:Z

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ChannelSettingsActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ChannelSettingsActivity;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->f:Lorg/json/JSONArray;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ChannelSettingsActivity;Lcom/bbm/d/ec;)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const v0, 0x7f0a014f

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p1, Lcom/bbm/d/ec;->t:Z

    if-eqz v0, :cond_4f

    move v0, v1

    :goto_e
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p1, Lcom/bbm/d/ec;->t:Z

    if-eqz v0, :cond_42

    iget-boolean v0, p1, Lcom/bbm/d/ec;->E:Z

    invoke-direct {p0, v0}, Lcom/bbm/ui/activities/ChannelSettingsActivity;->b(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->i:Landroid/widget/Switch;

    iget-boolean v3, p1, Lcom/bbm/d/ec;->d:Z

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-boolean v0, p1, Lcom/bbm/d/ec;->d:Z

    invoke-direct {p0, v0}, Lcom/bbm/ui/activities/ChannelSettingsActivity;->a(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->j:Landroid/widget/Switch;

    iget-boolean v3, p1, Lcom/bbm/d/ec;->e:Z

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->k:Landroid/widget/Switch;

    iget-boolean v3, p1, Lcom/bbm/d/ec;->A:Z

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-boolean v0, p1, Lcom/bbm/d/ec;->u:Z

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->l:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->l:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_42
    :goto_42
    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->m:Landroid/widget/Switch;

    iget-boolean v3, p1, Lcom/bbm/d/ec;->n:Z

    if-nez v3, :cond_49

    move v1, v2

    :cond_49
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iput-boolean v2, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->e:Z

    return-void

    :cond_4f
    const/16 v0, 0x8

    goto :goto_e

    :cond_52
    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->l:Landroid/widget/Switch;

    iget-boolean v3, p1, Lcom/bbm/d/ec;->K:Z

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_42
.end method

.method private a(Z)V
    .registers 4

    iget-object v1, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->h:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method

.method static synthetic b(Lcom/bbm/ui/activities/ChannelSettingsActivity;)Lcom/bbm/d/a;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->b:Lcom/bbm/d/a;

    return-object v0
.end method

.method static synthetic b(Lcom/bbm/ui/activities/ChannelSettingsActivity;Lcom/bbm/d/ec;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    iget-boolean v3, p1, Lcom/bbm/d/ec;->t:Z

    if-eqz v3, :cond_b8

    iget-object v3, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->i:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    iget-boolean v4, p1, Lcom/bbm/d/ec;->d:Z

    if-eq v3, v4, :cond_20

    const-string v3, "chatEnabled"

    iget-object v4, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->i:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_20
    iget-boolean v3, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->g:Z

    iget-boolean v4, p1, Lcom/bbm/d/ec;->E:Z

    if-eq v3, v4, :cond_2d

    const-string v3, "officeHoursAlwaysAvailable"

    iget-boolean v4, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->g:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_2d
    iget-object v3, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->i:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_6e

    iget-boolean v3, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->g:Z

    if-nez v3, :cond_6e

    iget-object v3, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->f:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/bbm/d/ec;->D:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_6e

    const-string v3, "officeHours"

    iget-object v4, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->f:Lorg/json/JSONArray;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    const-string v4, "officeHoursTimezone"

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "officeHoursAlwaysAvailable"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6e

    const-string v3, "officeHoursAlwaysAvailable"

    iget-boolean v4, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->g:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_6e
    iget-object v3, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->j:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    iget-boolean v4, p1, Lcom/bbm/d/ec;->e:Z

    if-eq v3, v4, :cond_83

    const-string v3, "commentsEnabled"

    iget-object v4, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->j:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_83
    iget-object v3, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->l:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    iget-boolean v4, p1, Lcom/bbm/d/ec;->K:Z

    if-eq v3, v4, :cond_98

    const-string v3, "searchable"

    iget-object v4, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->l:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_98
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_b8

    const-string v3, "uri"

    iget-object v4, p1, Lcom/bbm/d/ec;->O:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->b:Lcom/bbm/d/a;

    const-string v4, "channel"

    invoke-static {v3, v4}, Lcom/bbm/d/z;->b(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/cz;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    :cond_b8
    iget-object v2, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->m:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-nez v2, :cond_d9

    move v2, v0

    :goto_c1
    iget-boolean v3, p1, Lcom/bbm/d/ec;->n:Z

    if-eq v2, v3, :cond_d8

    iget-object v2, p1, Lcom/bbm/d/ec;->O:Ljava/lang/String;

    iget-object v3, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->m:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-nez v3, :cond_db

    :goto_cf
    invoke-static {v2, v0}, Lcom/bbm/d/z;->a(Ljava/lang/String;Z)Lcom/bbm/d/am;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->b:Lcom/bbm/d/a;

    invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
    :try_end_d8
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_d8} :catch_dd

    :cond_d8
    :goto_d8
    return-void

    :cond_d9
    move v2, v1

    goto :goto_c1

    :cond_db
    move v0, v1

    goto :goto_cf

    :catch_dd
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_d8
.end method

.method private b(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->g:Z

    iget-object v1, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->n:Landroid/widget/TextView;

    if-eqz p1, :cond_d

    const v0, 0x7f0e0185

    :goto_9
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_d
    const v0, 0x7f0e018b

    goto :goto_9
.end method

.method static synthetic c(Lcom/bbm/ui/activities/ChannelSettingsActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->e:Z

    return v0
.end method

.method static synthetic d(Lcom/bbm/ui/activities/ChannelSettingsActivity;)Lcom/bbm/j/a;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->c:Lcom/bbm/j/a;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/ui/activities/ChannelSettingsActivity;)Lorg/json/JSONArray;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->f:Lorg/json/JSONArray;

    return-object v0
.end method


# virtual methods
.method protected final d()V
    .registers 2

    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->d()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->o:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->e:Z

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    const/4 v0, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/bbm/ui/activities/cn;->onActivityResult(IILandroid/content/Intent;)V

    if-ne p1, v0, :cond_1f

    if-ne p2, v0, :cond_1f

    const-string v0, "officeHours"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "alwaysAvailable"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/bbm/ui/activities/ChannelSettingsActivity;->b(Z)V

    :try_start_18
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->f:Lorg/json/JSONArray;
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_1f} :catch_20

    :cond_1f
    :goto_1f
    return-void

    :catch_20
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_1f
.end method

.method public onAllowChatClicked(Landroid/view/View;)V
    .registers 3

    check-cast p1, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/bbm/ui/activities/ChannelSettingsActivity;->a(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/cn;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelSettingsActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelSettingsActivity;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->d:Ljava/lang/String;

    const v0, 0x7f0a0151

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->h:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0152

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->n:Landroid/widget/TextView;

    const v0, 0x7f0a0150

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->i:Landroid/widget/Switch;

    const v0, 0x7f0a0153

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->j:Landroid/widget/Switch;

    const v0, 0x7f0a0154

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->k:Landroid/widget/Switch;

    const v0, 0x7f0a0155

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->l:Landroid/widget/Switch;

    const v0, 0x7f0a0156

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->m:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->i:Landroid/widget/Switch;

    new-instance v1, Lcom/bbm/ui/activities/ef;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/ef;-><init>(Lcom/bbm/ui/activities/ChannelSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v0, 0x7f030112

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setCustomView(I)V

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a054e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0e01fa

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V

    new-instance v1, Lcom/bbm/ui/activities/eg;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/eg;-><init>(Lcom/bbm/ui/activities/ChannelSettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    return-void
.end method

.method protected onPause()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->o:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->onResume()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->o:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    return-void
.end method

.method public onViewSchedule(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "officeHours"

    iget-object v2, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->f:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "alwaysAvailable"

    iget-boolean v2, p0, Lcom/bbm/ui/activities/ChannelSettingsActivity;->g:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/bbm/ui/activities/ChannelSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
