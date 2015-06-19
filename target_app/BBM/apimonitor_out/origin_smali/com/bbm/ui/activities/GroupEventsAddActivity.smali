.class public Lcom/bbm/ui/activities/GroupEventsAddActivity;
.super Lcom/bbm/ui/activities/md;
.source "GroupEventsAddActivity.java"


# instance fields
.field protected a:Lcom/bbm/g/am;

.field protected b:Landroid/widget/EditText;

.field protected d:Landroid/widget/EditText;

.field protected e:Landroid/widget/EditText;

.field protected f:Lcom/bbm/ui/DateTimePickerView;

.field protected g:Lcom/bbm/ui/DateTimePickerView;

.field protected h:Landroid/widget/Switch;

.field protected i:I

.field protected j:I

.field protected k:Z

.field private l:Landroid/widget/LinearLayout;

.field private m:Lcom/bbm/ui/FooterActionBar;

.field private final n:Lcom/bbm/ui/ba;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bbm/ui/activities/md;-><init>()V

    new-instance v0, Lcom/bbm/ui/activities/ns;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ns;-><init>(Lcom/bbm/ui/activities/GroupEventsAddActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->n:Lcom/bbm/ui/ba;

    new-instance v0, Lcom/bbm/ui/fv;

    invoke-direct {v0}, Lcom/bbm/ui/fv;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupEventsAddActivity;->a(Lcom/bbm/ui/activities/aka;)V

    return-void
.end method

.method private static a(Ljava/util/Date;)Ljava/util/Date;
    .registers 5

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/ui/activities/GroupEventsAddActivity;)V
    .registers 10

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->f:Lcom/bbm/ui/DateTimePickerView;

    invoke-virtual {v0}, Lcom/bbm/ui/DateTimePickerView;->getDate()Ljava/util/Date;

    move-result-object v4

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->g:Lcom/bbm/ui/DateTimePickerView;

    invoke-virtual {v0}, Lcom/bbm/ui/DateTimePickerView;->getDate()Ljava/util/Date;

    move-result-object v1

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_28

    const v0, 0x7f0e03e8

    const v1, 0x7f0e03e7

    invoke-virtual {p0, v0, v1}, Lcom/bbm/ui/activities/GroupEventsAddActivity;->a(II)V

    :goto_27
    return-void

    :cond_28
    invoke-virtual {v1, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_38

    const v0, 0x7f0e03ee

    const v1, 0x7f0e03f3

    invoke-virtual {p0, v0, v1}, Lcom/bbm/ui/activities/GroupEventsAddActivity;->a(II)V

    goto :goto_27

    :cond_38
    :try_start_38
    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->h:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c2

    new-instance v0, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/32 v7, 0x5265c00

    add-long/2addr v5, v7

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    :goto_4d
    const-string v1, "allDayEvent"

    iget-object v5, p0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->h:Landroid/widget/Switch;

    invoke-virtual {v5}, Landroid/widget/Switch;->isChecked()Z

    move-result v5

    invoke-virtual {v2, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "subject"

    iget-object v5, p0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "location"

    iget-object v5, p0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "notes"

    iget-object v5, p0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "end"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a6
    .catch Lorg/json/JSONException; {:try_start_38 .. :try_end_a6} :catch_bd

    :goto_a6
    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->a:Lcom/bbm/g/am;

    const-string v1, "groupCalendarAppointment"

    new-instance v2, Lcom/bbm/g/cq;

    invoke-direct {v2, v3, v1}, Lcom/bbm/g/cq;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/bbm/g/cq;->a(Ljava/lang/String;)Lcom/bbm/g/cq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupEventsAddActivity;->finish()V

    goto/16 :goto_27

    :catch_bd
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->c(Ljava/lang/Throwable;)V

    goto :goto_a6

    :cond_c2
    move-object v0, v1

    goto :goto_4d
.end method

.method private static k()Ljava/util/Date;
    .registers 6

    const/4 v5, 0x1

    const/16 v4, 0x9

    const/4 v2, 0x0

    const/16 v3, 0xb

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->add(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x11

    if-lt v1, v2, :cond_30

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->add(II)V

    :cond_2b
    :goto_2b
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    :cond_30
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ge v1, v4, :cond_2b

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    goto :goto_2b
.end method


# virtual methods
.method protected final a(II)V
    .registers 5

    new-instance v0, Lcom/bbm/ui/b/o;

    invoke-direct {v0, p0}, Lcom/bbm/ui/b/o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/bbm/ui/b/o;->setTitle(I)V

    invoke-virtual {v0, p2}, Lcom/bbm/ui/b/o;->e(I)V

    invoke-virtual {v0}, Lcom/bbm/ui/b/o;->a()V

    const v1, 0x7f0e0553

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->b(I)V

    invoke-virtual {v0}, Lcom/bbm/ui/b/o;->show()V

    return-void
.end method

.method protected b()V
    .registers 7

    const/4 v5, -0x1

    new-instance v0, Lcom/bbm/ui/HeaderButtonActionBar;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupEventsAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e03ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupEventsAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0173

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupEventsAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0638

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/bbm/ui/HeaderButtonActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/bbm/ui/activities/nv;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/nv;-><init>(Lcom/bbm/ui/activities/GroupEventsAddActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/bbm/ui/activities/nw;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/nw;-><init>(Lcom/bbm/ui/activities/GroupEventsAddActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupEventsAddActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    return-void
.end method

.method protected final f()Z
    .registers 7

    const-wide/16 v4, 0x3e8

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->h:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_7a

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->f:Lcom/bbm/ui/DateTimePickerView;

    invoke-virtual {v0}, Lcom/bbm/ui/DateTimePickerView;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v4

    invoke-static {}, Lcom/bbm/ui/activities/GroupEventsAddActivity;->k()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_7a

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->g:Lcom/bbm/ui/DateTimePickerView;

    invoke-virtual {v0}, Lcom/bbm/ui/DateTimePickerView;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v4

    invoke-static {}, Lcom/bbm/ui/activities/GroupEventsAddActivity;->k()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/bbm/ui/activities/GroupEventsAddActivity;->a(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_ae

    :cond_7a
    const/4 v0, 0x1

    :goto_7b
    if-eqz v0, :cond_b0

    new-instance v1, Lcom/bbm/ui/b/o;

    invoke-direct {v1, p0}, Lcom/bbm/ui/b/o;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e03e6

    invoke-virtual {v1, v2}, Lcom/bbm/ui/b/o;->setTitle(I)V

    const v2, 0x7f0e03e5

    invoke-virtual {v1, v2}, Lcom/bbm/ui/b/o;->e(I)V

    const v2, 0x7f0e03e3

    invoke-virtual {v1, v2}, Lcom/bbm/ui/b/o;->b(I)V

    const v2, 0x7f0e03e4

    invoke-virtual {v1, v2}, Lcom/bbm/ui/b/o;->a(I)V

    new-instance v2, Lcom/bbm/ui/activities/nx;

    invoke-direct {v2, p0}, Lcom/bbm/ui/activities/nx;-><init>(Lcom/bbm/ui/activities/GroupEventsAddActivity;)V

    invoke-virtual {v1, v2}, Lcom/bbm/ui/b/o;->b(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/bbm/ui/activities/ny;

    invoke-direct {v2, p0, v1}, Lcom/bbm/ui/activities/ny;-><init>(Lcom/bbm/ui/activities/GroupEventsAddActivity;Lcom/bbm/ui/b/o;)V

    invoke-virtual {v1, v2}, Lcom/bbm/ui/b/o;->a(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/bbm/ui/b/o;->show()V

    :goto_ad
    return v0

    :cond_ae
    const/4 v0, 0x0

    goto :goto_7b

    :cond_b0
    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupEventsAddActivity;->finish()V

    goto :goto_ad
.end method

.method public onBackPressed()V
    .registers 1

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupEventsAddActivity;->f()Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    const/16 v2, 0x400

    const/16 v1, 0x8

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/md;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupEventsAddActivity;->setContentView(I)V

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->a:Lcom/bbm/g/am;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/ui/activities/ev;->y:Z

    const v0, 0x7f0a0189

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupEventsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->l:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupEventsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->m:Lcom/bbm/ui/FooterActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->m:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setVisibility(I)V

    const v0, 0x7f0a0136

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupEventsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0a0192

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupEventsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->b:Landroid/widget/EditText;

    invoke-static {v0, v2}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const v0, 0x7f0a0193

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupEventsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->d:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->d:Landroid/widget/EditText;

    invoke-static {v0, v2}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;

    const v0, 0x7f0a0194

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupEventsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->e:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->e:Landroid/widget/EditText;

    const/16 v1, 0x2134

    invoke-static {v0, v1}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;

    const v0, 0x7f0a0196

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupEventsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->h:Landroid/widget/Switch;

    const v0, 0x7f0a0197

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupEventsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/DateTimePickerView;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->f:Lcom/bbm/ui/DateTimePickerView;

    const v0, 0x7f0a0198

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupEventsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/DateTimePickerView;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->g:Lcom/bbm/ui/DateTimePickerView;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->f:Lcom/bbm/ui/DateTimePickerView;

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->n:Lcom/bbm/ui/ba;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/DateTimePickerView;->setOnDateTimePickerViewChangeListener(Lcom/bbm/ui/ba;)V

    invoke-static {}, Lcom/bbm/ui/activities/GroupEventsAddActivity;->k()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupEventsAddActivity;->a(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->f:Lcom/bbm/ui/DateTimePickerView;

    invoke-virtual {v2, v0}, Lcom/bbm/ui/DateTimePickerView;->setDate(Ljava/util/Date;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->g:Lcom/bbm/ui/DateTimePickerView;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/DateTimePickerView;->setDate(Ljava/util/Date;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->l:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/bbm/ui/activities/nt;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/nt;-><init>(Lcom/bbm/ui/activities/GroupEventsAddActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsAddActivity;->h:Landroid/widget/Switch;

    new-instance v1, Lcom/bbm/ui/activities/nu;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/nu;-><init>(Lcom/bbm/ui/activities/GroupEventsAddActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupEventsAddActivity;->b()V

    return-void
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Lcom/bbm/ui/activities/md;->onPause()V

    return-void
.end method
