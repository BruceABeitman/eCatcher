.class public Lcom/bbm/ui/activities/GroupEventDetailsActivity;
.super Lcom/bbm/ui/activities/GroupEventsAddActivity;
.source "GroupEventDetailsActivity.java"


# instance fields
.field private l:Ljava/lang/String;

.field private m:Lcom/bbm/ui/FooterActionBar;

.field private final n:Lcom/bbm/j/k;

.field private final o:Lcom/bbm/j/u;

.field private final p:Lcom/bbm/ui/cj;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bbm/ui/activities/GroupEventsAddActivity;-><init>()V

    new-instance v0, Lcom/bbm/ui/activities/nd;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/nd;-><init>(Lcom/bbm/ui/activities/GroupEventDetailsActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->n:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/activities/ne;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ne;-><init>(Lcom/bbm/ui/activities/GroupEventDetailsActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->o:Lcom/bbm/j/u;

    new-instance v0, Lcom/bbm/ui/activities/nj;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/nj;-><init>(Lcom/bbm/ui/activities/GroupEventDetailsActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->p:Lcom/bbm/ui/cj;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/GroupEventDetailsActivity;)V
    .registers 9

    const-wide/16 v6, 0x3e8

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->a:Lcom/bbm/g/am;

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bbm/g/am;->h(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/s;

    move-result-object v0

    if-eqz v0, :cond_7b

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->b:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/bbm/g/s;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->d:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/bbm/g/s;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->e:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->a:Lcom/bbm/g/am;

    iget-object v3, v0, Lcom/bbm/g/s;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/bbm/g/am;->j(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/b;

    move-result-object v2

    iget-object v2, v2, Lcom/bbm/g/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->h:Landroid/widget/Switch;

    iget-boolean v2, v0, Lcom/bbm/g/s;->a:Z

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v1, Ljava/util/Date;

    iget-wide v2, v0, Lcom/bbm/g/s;->h:J

    mul-long/2addr v2, v6

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iget-boolean v2, v0, Lcom/bbm/g/s;->a:Z

    if-eqz v2, :cond_7c

    invoke-static {v1}, Lcom/bbm/util/bd;->a(Ljava/util/Date;)I

    move-result v2

    iput v2, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->j:I

    iget-object v2, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->f:Lcom/bbm/ui/DateTimePickerView;

    const/4 v3, 0x0

    iget v4, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->j:I

    invoke-static {v1, v5, v3, v4}, Lcom/bbm/util/bd;->a(Ljava/util/Date;ZII)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bbm/ui/DateTimePickerView;->setDate(Ljava/util/Date;)V

    iput-boolean v5, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->k:Z

    :goto_55
    new-instance v1, Ljava/util/Date;

    iget-wide v2, v0, Lcom/bbm/g/s;->b:J

    mul-long/2addr v2, v6

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iget-boolean v0, v0, Lcom/bbm/g/s;->a:Z

    if-eqz v0, :cond_82

    new-instance v0, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    sub-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->g:Lcom/bbm/ui/DateTimePickerView;

    invoke-static {v0}, Lcom/bbm/util/bd;->a(Ljava/util/Date;)I

    move-result v2

    invoke-static {v0, v5, v5, v2}, Lcom/bbm/util/bd;->a(Ljava/util/Date;ZII)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/ui/DateTimePickerView;->setDate(Ljava/util/Date;)V

    :cond_7b
    :goto_7b
    return-void

    :cond_7c
    iget-object v2, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->f:Lcom/bbm/ui/DateTimePickerView;

    invoke-virtual {v2, v1}, Lcom/bbm/ui/DateTimePickerView;->setDate(Ljava/util/Date;)V

    goto :goto_55

    :cond_82
    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->g:Lcom/bbm/ui/DateTimePickerView;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/DateTimePickerView;->setDate(Ljava/util/Date;)V

    goto :goto_7b
.end method

.method static synthetic b(Lcom/bbm/ui/activities/GroupEventDetailsActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/activities/GroupEventDetailsActivity;)V
    .registers 3

    new-instance v0, Lcom/bbm/ui/b/o;

    invoke-direct {v0, p0}, Lcom/bbm/ui/b/o;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e03e6

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->setTitle(I)V

    const v1, 0x7f0e03e5

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->e(I)V

    const v1, 0x7f0e03e3

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->b(I)V

    const v1, 0x7f0e03e4

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->a(I)V

    new-instance v1, Lcom/bbm/ui/activities/nh;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/nh;-><init>(Lcom/bbm/ui/activities/GroupEventDetailsActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->b(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/bbm/ui/activities/ni;

    invoke-direct {v1, p0, v0}, Lcom/bbm/ui/activities/ni;-><init>(Lcom/bbm/ui/activities/GroupEventDetailsActivity;Lcom/bbm/ui/b/o;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->a(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/bbm/ui/b/o;->show()V

    return-void
.end method

.method static synthetic d(Lcom/bbm/ui/activities/GroupEventDetailsActivity;)Lcom/bbm/j/u;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->o:Lcom/bbm/j/u;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/ui/activities/GroupEventDetailsActivity;)V
    .registers 14

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->a:Lcom/bbm/g/am;

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bbm/g/am;->h(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/s;

    move-result-object v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->h:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v5

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->f:Lcom/bbm/ui/DateTimePickerView;

    invoke-virtual {v0}, Lcom/bbm/ui/DateTimePickerView;->getDate()Ljava/util/Date;

    move-result-object v6

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->g:Lcom/bbm/ui/DateTimePickerView;

    invoke-virtual {v0}, Lcom/bbm/ui/DateTimePickerView;->getDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5e

    const v0, 0x7f0e03e8

    const v1, 0x7f0e03e7

    invoke-virtual {p0, v0, v1}, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->a(II)V

    :cond_5d
    :goto_5d
    return-void

    :cond_5e
    invoke-virtual {v7, v6}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_6e

    const v0, 0x7f0e03ee

    const v1, 0x7f0e03f3

    invoke-virtual {p0, v0, v1}, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->a(II)V

    goto :goto_5d

    :cond_6e
    :try_start_6e
    iget-object v6, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->h:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_7a

    const-wide/32 v6, 0x5265c00

    add-long/2addr v0, v6

    :cond_7a
    const-string v6, "uri"

    iget-object v7, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->l:Ljava/lang/String;

    invoke-virtual {v10, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "subject"

    invoke-virtual {v10, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "location"

    invoke-virtual {v10, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "notes"

    invoke-virtual {v10, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "allDayEvent"

    invoke-virtual {v10, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "start"

    const-wide/16 v3, 0x3e8

    div-long v3, v8, v3

    invoke-virtual {v10, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "end"

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    invoke-virtual {v10, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->a:Lcom/bbm/g/am;

    const-string v1, "groupCalendarAppointment"

    invoke-static {v11, v1}, Lcom/bbm/g/an;->a(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/g/cr;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bbm/g/cr;->a(Ljava/lang/String;)Lcom/bbm/g/cr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
    :try_end_ba
    .catch Lorg/json/JSONException; {:try_start_6e .. :try_end_ba} :catch_be

    :goto_ba
    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->finish()V

    goto :goto_5d

    :catch_be
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->c(Ljava/lang/Throwable;)V

    goto :goto_ba
.end method

.method static synthetic f(Lcom/bbm/ui/activities/GroupEventDetailsActivity;)V
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    :try_start_a
    const-string v2, "uri"

    iget-object v3, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->a:Lcom/bbm/g/am;

    const-string v2, "groupCalendarAppointment"

    invoke-static {v1, v2}, Lcom/bbm/g/an;->b(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/g/cs;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bbm/g/cs;->a(Ljava/lang/String;)Lcom/bbm/g/cs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_25} :catch_29

    :goto_25
    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->finish()V

    return-void

    :catch_29
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_25
.end method


# virtual methods
.method protected final b()V
    .registers 7

    const/4 v5, -0x1

    new-instance v0, Lcom/bbm/ui/HeaderButtonActionBar;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e03ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0173

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0638

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/bbm/ui/HeaderButtonActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/bbm/ui/activities/nf;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/nf;-><init>(Lcom/bbm/ui/activities/GroupEventDetailsActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/bbm/ui/activities/ng;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/ng;-><init>(Lcom/bbm/ui/activities/GroupEventDetailsActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->o:Lcom/bbm/j/u;

    invoke-virtual {v0}, Lcom/bbm/j/u;->c()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "eventUri"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->l:Ljava/lang/String;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    const/4 v0, 0x1

    :goto_1a
    const-string v2, "No Event ID specified in Intent"

    invoke-static {p0, v0, v2}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;ZLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    :goto_22
    return-void

    :cond_23
    move v0, v1

    goto :goto_1a

    :cond_25
    invoke-super {p0, p1}, Lcom/bbm/ui/activities/GroupEventsAddActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->m:Lcom/bbm/ui/FooterActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->m:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setVisibility(I)V

    const v0, 0x7f0a0136

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->m:Lcom/bbm/ui/FooterActionBar;

    new-instance v2, Lcom/bbm/ui/ActionBarItem;

    const v3, 0x7f020268

    const v4, 0x7f0e02ea

    invoke-direct {v2, p0, v3, v4}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v2, v1}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->m:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->m:Lcom/bbm/ui/FooterActionBar;

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->p:Lcom/bbm/ui/cj;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->a:Lcom/bbm/g/am;

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    new-instance v3, Lcom/bbm/g/au;

    invoke-direct {v3, v1, v2}, Lcom/bbm/g/au;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    goto :goto_22
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Lcom/bbm/ui/activities/GroupEventsAddActivity;->onPause()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->n:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Lcom/bbm/ui/activities/GroupEventsAddActivity;->onResume()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->n:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    return-void
.end method
