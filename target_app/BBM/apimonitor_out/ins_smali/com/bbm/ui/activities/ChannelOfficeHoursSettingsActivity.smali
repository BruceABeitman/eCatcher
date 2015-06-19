.class public Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;
.super Lcom/bbm/ui/activities/ev;
.source "ChannelOfficeHoursSettingsActivity.java"
.field private final a:Ljava/lang/String;
.field private final b:Ljava/lang/String;
.field private final c:I
.field private d:Landroid/widget/Switch;
.field private e:Landroid/view/ViewGroup;
.field private f:Lcom/bbm/ui/activities/cv;
.field private g:Ljava/util/ArrayList;
.field private h:Ljava/util/ArrayList;
.field private final i:Ljava/text/DateFormatSymbols;
.field private final j:Ljava/text/SimpleDateFormat;
.field private final k:Landroid/view/View$OnClickListener;
.field private final l:Lcom/bbm/ui/ba;
.field private final m:Landroid/widget/CompoundButton$OnCheckedChangeListener;
.method public constructor <init>()V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/ev;-><init>(Ljava/lang/Class;)V
const-string v0, "09:00"
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->a:Ljava/lang/String;
const-string v0, "17:00"
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->b:Ljava/lang/String;
invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I
move-result v0
add-int/lit8 v0, v0, -0x2
iput v0, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->c:I
new-instance v0, Ljava/text/DateFormatSymbols;
invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->i:Ljava/text/DateFormatSymbols;
new-instance v0, Ljava/text/SimpleDateFormat;
const-string v1, "HH:mm"
sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->j:Ljava/text/SimpleDateFormat;
new-instance v0, Lcom/bbm/ui/activities/cq;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/cq;-><init>(Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->k:Landroid/view/View$OnClickListener;
new-instance v0, Lcom/bbm/ui/activities/cr;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/cr;-><init>(Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->l:Lcom/bbm/ui/ba;
new-instance v0, Lcom/bbm/ui/activities/cs;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/cs;-><init>(Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->m:Landroid/widget/CompoundButton$OnCheckedChangeListener;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/activities/ev;->y:Z
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;)Lcom/bbm/ui/activities/cv;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->f:Lcom/bbm/ui/activities/cv;
return-object v0
.end method
.method static synthetic a(Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;Lcom/bbm/ui/activities/cv;)Lcom/bbm/ui/activities/cv;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->f:Lcom/bbm/ui/activities/cv;
return-object p1
.end method
.method private a(Ljava/lang/String;)Ljava/util/Date;
.registers 8
const/4 v5, 0x1
const/4 v4, 0x0
const-string v0, ":"
invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
aget-object v1, v0, v4
invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v1
aget-object v0, v0, v5
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
move-result-object v2
const/16 v3, 0xb
invoke-virtual {v2, v3, v1}, Ljava/util/Calendar;->set(II)V
const/16 v1, 0xc
invoke-virtual {v2, v1, v0}, Ljava/util/Calendar;->set(II)V
const/16 v0, 0xd
invoke-virtual {v2, v0, v4}, Ljava/util/Calendar;->set(II)V
const/16 v0, 0xe
invoke-virtual {v2, v0, v4}, Ljava/util/Calendar;->set(II)V
iget v0, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->c:I
invoke-virtual {v2, v5, v0}, Ljava/util/Calendar;->set(II)V
invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
move-result-object v0
return-object v0
.end method
.method static synthetic a(Ljava/util/Date;)Ljava/util/Date;
.registers 2
invoke-static {p0}, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->d(Ljava/util/Date;)Ljava/util/Date;
move-result-object v0
return-object v0
.end method
.method static synthetic a(Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;Z)V
.registers 2
invoke-direct {p0, p1}, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->a(Z)V
return-void
.end method
.method private a(Lorg/json/JSONArray;)V
.registers 7
const/4 v0, 0x0
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->g:Ljava/util/ArrayList;
move v2, v0
:goto_9
const/4 v1, 0x7
if-ge v2, v1, :cond_3f
:try_start_c
new-instance v3, Lorg/json/JSONObject;
invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
const-string v1, "dayOfWeek"
invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string v4, "available"
const/4 v1, 0x6
if-eq v2, v1, :cond_38
if-eqz v2, :cond_38
const/4 v1, 0x1
:goto_1e
invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
const-string v1, "startTime"
const-string v4, "09:00"
invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v1, "endTime"
const-string v4, "17:00"
invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
iget-object v1, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->g:Ljava/util/ArrayList;
invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
:goto_34
:try_end_34
.catch Lorg/json/JSONException; {:try_start_c .. :try_end_34} :catch_3a
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_9
:cond_38
move v1, v0
goto :goto_1e
:catch_3a
move-exception v1
invoke-static {v1}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_34
:goto_3f
:cond_3f
invoke-virtual {p1}, Lorg/json/JSONArray;->length()I
move-result v1
if-ge v0, v1, :cond_60
:try_start_45
invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v1
const-string v2, "dayOfWeek"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v1
iget-object v2, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->g:Ljava/util/ArrayList;
invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v3
invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
:goto_58
:try_end_58
.catch Lorg/json/JSONException; {:try_start_45 .. :try_end_58} :catch_5b
add-int/lit8 v0, v0, 0x1
goto :goto_3f
:catch_5b
move-exception v1
invoke-static {v1}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_58
:cond_60
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->g:Ljava/util/ArrayList;
invoke-static {v0}, Lcom/bbm/util/ac;->a(Ljava/util/List;)V
return-void
.end method
.method private a(Z)V
.registers 4
iget-object v1, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->e:Landroid/view/ViewGroup;
if-nez p1, :cond_9
const/4 v0, 0x0
:goto_5
invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V
return-void
:cond_9
const/16 v0, 0x8
goto :goto_5
.end method
.method static synthetic b(Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->g:Ljava/util/ArrayList;
return-object v0
.end method
.method static synthetic b(Ljava/util/Date;)Ljava/util/Date;
.registers 2
invoke-static {p0}, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->c(Ljava/util/Date;)Ljava/util/Date;
move-result-object v0
return-object v0
.end method
.method private b()V
.registers 14
const/4 v12, 0x2
const/4 v2, 0x0
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->h:Ljava/util/ArrayList;
invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v4
move v3, v2
:goto_e
const/4 v0, 0x7
if-ge v3, v0, :cond_107
const v0, 0x7f0300e7
iget-object v1, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->e:Landroid/view/ViewGroup;
invoke-virtual {v4, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v5
new-instance v6, Lcom/bbm/ui/activities/cw;
invoke-direct {v6, p0}, Lcom/bbm/ui/activities/cw;-><init>(Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;)V
const v0, 0x7f0a0150
invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Switch;
iput-object v0, v6, Lcom/bbm/ui/activities/cw;->a:Landroid/widget/Switch;
const v0, 0x7f0a04c3
invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, v6, Lcom/bbm/ui/activities/cw;->b:Landroid/view/View;
const v0, 0x7f0a04c4
invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/DateTimePickerView;
iput-object v0, v6, Lcom/bbm/ui/activities/cw;->c:Lcom/bbm/ui/DateTimePickerView;
const v0, 0x7f0a04c5
invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/DateTimePickerView;
iput-object v0, v6, Lcom/bbm/ui/activities/cw;->d:Lcom/bbm/ui/DateTimePickerView;
iget-object v7, v6, Lcom/bbm/ui/activities/cw;->a:Landroid/widget/Switch;
iget-object v8, v6, Lcom/bbm/ui/activities/cw;->b:Landroid/view/View;
iget-object v9, v6, Lcom/bbm/ui/activities/cw;->c:Lcom/bbm/ui/DateTimePickerView;
iget-object v10, v6, Lcom/bbm/ui/activities/cw;->d:Lcom/bbm/ui/DateTimePickerView;
invoke-virtual {v9, v12}, Lcom/bbm/ui/DateTimePickerView;->setMode(I)V
invoke-virtual {v10, v12}, Lcom/bbm/ui/DateTimePickerView;->setMode(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->k:Landroid/view/View$OnClickListener;
invoke-virtual {v7, v0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->l:Lcom/bbm/ui/ba;
invoke-virtual {v9, v0}, Lcom/bbm/ui/DateTimePickerView;->setOnDateTimePickerViewChangeListener(Lcom/bbm/ui/ba;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->l:Lcom/bbm/ui/ba;
invoke-virtual {v10, v0}, Lcom/bbm/ui/DateTimePickerView;->setOnDateTimePickerViewChangeListener(Lcom/bbm/ui/ba;)V
new-instance v0, Lcom/bbm/ui/activities/cv;
sget-object v1, Lcom/bbm/ui/activities/cx;->c:Lcom/bbm/ui/activities/cx;
invoke-direct {v0, p0, v3, v1}, Lcom/bbm/ui/activities/cv;-><init>(Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;ILcom/bbm/ui/activities/cx;)V
invoke-virtual {v7, v0}, Landroid/widget/Switch;->setTag(Ljava/lang/Object;)V
new-instance v0, Lcom/bbm/ui/activities/cv;
sget-object v1, Lcom/bbm/ui/activities/cx;->a:Lcom/bbm/ui/activities/cx;
invoke-direct {v0, p0, v3, v1}, Lcom/bbm/ui/activities/cv;-><init>(Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;ILcom/bbm/ui/activities/cx;)V
invoke-virtual {v9, v0}, Lcom/bbm/ui/DateTimePickerView;->setTag(Ljava/lang/Object;)V
new-instance v0, Lcom/bbm/ui/activities/cv;
sget-object v1, Lcom/bbm/ui/activities/cx;->b:Lcom/bbm/ui/activities/cx;
invoke-direct {v0, p0, v3, v1}, Lcom/bbm/ui/activities/cv;-><init>(Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;ILcom/bbm/ui/activities/cx;)V
invoke-virtual {v10, v0}, Lcom/bbm/ui/DateTimePickerView;->setTag(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->g:Ljava/util/ArrayList;
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/json/JSONObject;
iget-object v1, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->i:Ljava/text/DateFormatSymbols;
invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;
move-result-object v1
const-string v11, "dayOfWeek"
invoke-virtual {v0, v11, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
move-result v11
add-int/lit8 v11, v11, 0x1
aget-object v1, v1, v11
invoke-virtual {v7, v1}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V
const-string v1, "available"
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v1
invoke-virtual {v7, v1}, Landroid/widget/Switch;->setChecked(Z)V
invoke-virtual {v7}, Landroid/widget/Switch;->isChecked()Z
move-result v1
if-eqz v1, :cond_104
move v1, v2
:goto_af
invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V
const-string v1, "startTime"
const-string v8, "09:00"
invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1}, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->a(Ljava/lang/String;)Ljava/util/Date;
move-result-object v1
invoke-virtual {v9, v1}, Lcom/bbm/ui/DateTimePickerView;->setDate(Ljava/util/Date;)V
const-string v1, "endTime"
const-string v8, "17:00"
invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->a(Ljava/lang/String;)Ljava/util/Date;
move-result-object v0
invoke-virtual {v10, v0}, Lcom/bbm/ui/DateTimePickerView;->setDate(Ljava/util/Date;)V
invoke-virtual {v10}, Lcom/bbm/ui/DateTimePickerView;->getDate()Ljava/util/Date;
move-result-object v0
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->c(Ljava/util/Date;)Ljava/util/Date;
move-result-object v0
invoke-virtual {v9, v0}, Lcom/bbm/ui/DateTimePickerView;->setMaxDateTime(Ljava/util/Date;)V
invoke-virtual {v9}, Lcom/bbm/ui/DateTimePickerView;->getDate()Ljava/util/Date;
move-result-object v0
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->d(Ljava/util/Date;)Ljava/util/Date;
move-result-object v0
invoke-virtual {v10, v0}, Lcom/bbm/ui/DateTimePickerView;->setMinDateTime(Ljava/util/Date;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->m:Landroid/widget/CompoundButton$OnCheckedChangeListener;
invoke-virtual {v7, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->k:Landroid/view/View$OnClickListener;
invoke-virtual {v9, v0}, Lcom/bbm/ui/DateTimePickerView;->setOnDateTimePickerViewClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->k:Landroid/view/View$OnClickListener;
invoke-virtual {v10, v0}, Lcom/bbm/ui/DateTimePickerView;->setOnDateTimePickerViewClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->h:Ljava/util/ArrayList;
invoke-virtual {v0, v3, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->e:Landroid/view/ViewGroup;
invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
add-int/lit8 v0, v3, 0x1
move v3, v0
goto/16 :goto_e
:cond_104
const/16 v1, 0x8
goto :goto_af
:cond_107
return-void
.end method
.method static synthetic c(Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;)Ljava/text/SimpleDateFormat;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->j:Ljava/text/SimpleDateFormat;
return-object v0
.end method
.method private static c(Ljava/util/Date;)Ljava/util/Date;
.registers 5
invoke-virtual {p0}, Ljava/util/Date;->getTime()J
move-result-wide v0
invoke-virtual {p0}, Ljava/util/Date;->getHours()I
move-result v2
if-nez v2, :cond_10
invoke-virtual {p0}, Ljava/util/Date;->getMinutes()I
move-result v2
if-eqz v2, :cond_14
:cond_10
const-wide/32 v2, 0xea60
sub-long/2addr v0, v2
:cond_14
new-instance v2, Ljava/util/Date;
invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V
return-object v2
.end method
.method static synthetic d(Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->h:Ljava/util/ArrayList;
return-object v0
.end method
.method private static d(Ljava/util/Date;)Ljava/util/Date;
.registers 5
invoke-virtual {p0}, Ljava/util/Date;->getTime()J
move-result-wide v0
invoke-virtual {p0}, Ljava/util/Date;->getHours()I
move-result v2
const/16 v3, 0x18
if-ne v2, v3, :cond_12
invoke-virtual {p0}, Ljava/util/Date;->getMinutes()I
move-result v2
if-eqz v2, :cond_16
:cond_12
const-wide/32 v2, 0xea60
add-long/2addr v0, v2
:cond_16
new-instance v2, Ljava/util/Date;
invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V
return-object v2
.end method
.method static synthetic e(Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;)V
.registers 4
new-instance v0, Lorg/json/JSONArray;
iget-object v1, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->g:Ljava/util/ArrayList;
invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V
new-instance v1, Landroid/content/Intent;
const-class v2, Lcom/bbm/ui/activities/ChannelSettingsActivity;
invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v2, "officeHours"
invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v0, "alwaysAvailable"
iget-object v2, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->d:Landroid/widget/Switch;
invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z
move-result v2
invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const/4 v0, 0x1
invoke-virtual {p0, v0, v1}, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->setResult(ILandroid/content/Intent;)V
return-void
.end method
.method public onAlwaysAvailableClicked(Landroid/view/View;)V
.registers 3
check-cast p1, Landroid/widget/Switch;
invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z
move-result v0
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->a(Z)V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x0
invoke-super {p0, p1}, Lcom/bbm/ui/activities/ev;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030011
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->setContentView(I)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "officeHours"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
const-string v2, "alwaysAvailable"
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v1
:try_start_1e
new-instance v2, Lorg/json/JSONArray;
invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v2}, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->a(Lorg/json/JSONArray;)V
:try_end_26
.catch Ljava/lang/Exception; {:try_start_1e .. :try_end_26} :catch_88
:goto_26
const v0, 0x7f0a0104
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Switch;
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->d:Landroid/widget/Switch;
const v0, 0x7f0a0106
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->e:Landroid/view/ViewGroup;
invoke-direct {p0}, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->b()V
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->d:Landroid/widget/Switch;
invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->d:Landroid/widget/Switch;
new-instance v2, Lcom/bbm/ui/activities/ct;
invoke-direct {v2, p0}, Lcom/bbm/ui/activities/ct;-><init>(Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;)V
invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
invoke-direct {p0, v1}, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->a(Z)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v1
const v0, 0x7f030112
invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setCustomView(I)V
invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v2, 0x7f0a054e
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const v2, 0x7f0e01ff
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V
const/16 v0, 0x10
invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V
const v0, 0x7f0a00be
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/FooterActionBar;
invoke-virtual {v0, v3}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V
new-instance v1, Lcom/bbm/ui/activities/cu;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/cu;-><init>(Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V
const-string v1, " - Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_88
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_26
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onPause()V
const-string v1, " - Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onResume()V
const-string v1, " - Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method