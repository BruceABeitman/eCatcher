.class public Lcom/twidroid/widget/MediumWidget;
.super Lcom/twidroid/widget/BaseWidget;
.source "SourceFile"
.field static final A:I = 0x7f0300a0
.field static final B:I = 0x7f0300a1
.field static C:Ljava/util/ArrayList; = null
.field static final D:I = 0x0
.field static E:Landroid/widget/RemoteViews; = null
.field static F:Landroid/net/Uri; = null
.field static G:Landroid/content/SharedPreferences; = null
.field private static final H:Ljava/lang/String; = "MediumWidget"
.field static a:I
.field static b:I
.field static c:I
.field static d:I
.field static e:I
.field static f:I
.field static g:I
.field static h:I
.field static i:I
.field static j:I
.field static k:Z
.field static z:Z
.method static constructor <clinit>()V
.registers 3
const/4 v2, 0x2
const/4 v1, 0x0
sput v2, Lcom/twidroid/widget/MediumWidget;->b:I
sput v1, Lcom/twidroid/widget/MediumWidget;->c:I
const/4 v0, 0x1
sput v0, Lcom/twidroid/widget/MediumWidget;->d:I
sput v2, Lcom/twidroid/widget/MediumWidget;->e:I
const/4 v0, 0x3
sput v0, Lcom/twidroid/widget/MediumWidget;->f:I
const/4 v0, 0x6
sput v0, Lcom/twidroid/widget/MediumWidget;->g:I
const/16 v0, 0x9
sput v0, Lcom/twidroid/widget/MediumWidget;->h:I
const/16 v0, 0xa
sput v0, Lcom/twidroid/widget/MediumWidget;->i:I
const/16 v0, 0xb
sput v0, Lcom/twidroid/widget/MediumWidget;->j:I
sput-boolean v1, Lcom/twidroid/widget/MediumWidget;->k:Z
sput-boolean v1, Lcom/twidroid/widget/MediumWidget;->z:Z
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
sput-object v0, Lcom/twidroid/widget/MediumWidget;->C:Ljava/util/ArrayList;
sget v0, Lcom/twidroid/widget/MediumWidget;->b:I
mul-int/lit8 v0, v0, 0xa
sput v0, Lcom/twidroid/widget/MediumWidget;->D:I
const/4 v0, 0x0
sput-object v0, Lcom/twidroid/widget/MediumWidget;->E:Landroid/widget/RemoteViews;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/twidroid/widget/BaseWidget;-><init>()V
return-void
.end method
.method public static a(Landroid/content/Context;Lcom/twidroid/model/twitter/Tweet;)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p1}, Lcom/twidroid/model/twitter/Tweet;->l()J
move-result-wide v1
invoke-static {v1, v2}, Lcom/ubermedia/b/a/k;->b(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, " "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const v1, 0x7f0c02fa
invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
const-string v1, " "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p1, Lcom/twidroid/model/twitter/Tweet;->ai:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
.registers 15
const/4 v1, 0x0
const/16 v11, 0x21
const/4 v4, 0x1
const/4 v10, 0x0
const-string v0, "MediumWidget"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Updating widget. page "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
sget v3, Lcom/twidroid/widget/MediumWidget;->a:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
new-instance v8, Landroid/text/style/ForegroundColorSpan;
const v0, -0xa1371d
invoke-direct {v8, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V
new-instance v9, Landroid/text/style/StyleSpan;
invoke-direct {v9, v4}, Landroid/text/style/StyleSpan;-><init>(I)V
sput-object v1, Lcom/twidroid/widget/MediumWidget;->E:Landroid/widget/RemoteViews;
sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
const-string v2, "HTC"
invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_3a
sput v4, Lcom/twidroid/widget/MediumWidget;->b:I
:cond_3a
sput-boolean v4, Lcom/twidroid/widget/MediumWidget;->k:Z
invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
sput-object v0, Lcom/twidroid/widget/MediumWidget;->G:Landroid/content/SharedPreferences;
sget-object v0, Lcom/twidroid/widget/MediumWidget;->G:Landroid/content/SharedPreferences;
const-string v2, "setup.ok"
invoke-interface {v0, v2, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
if-nez v0, :cond_b7
sget-object v0, Lcom/twidroid/widget/MediumWidget;->E:Landroid/widget/RemoteViews;
if-nez v0, :cond_80
new-instance v0, Landroid/widget/RemoteViews;
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
const v2, 0x7f0300a1
invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/twidroid/widget/MediumWidget;->E:Landroid/widget/RemoteViews;
sget-object v0, Lcom/twidroid/widget/MediumWidget;->E:Landroid/widget/RemoteViews;
const v1, 0x7f0901fc
const v2, 0x7f0c02cf
invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/twidroid/TwidroidClient;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
sget-object v1, Lcom/twidroid/widget/MediumWidget;->E:Landroid/widget/RemoteViews;
const v2, 0x7f0901f7
invoke-static {p0, v10, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
:cond_80
:try_start_80
:goto_80
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
new-instance v2, Landroid/content/ComponentName;
const-class v3, Lcom/twidroid/widget/MediumWidget;
invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
sget-object v3, Lcom/twidroid/widget/MediumWidget;->E:Landroid/widget/RemoteViews;
invoke-virtual {p1, v2, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
const-string v2, "MediumWidget"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "MediumWidget update took "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
sub-long v0, v4, v0
invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "ms"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_b4
:try_end_b4
.catch Ljava/lang/Exception; {:try_start_80 .. :try_end_b4} :catch_1c3
sput-boolean v10, Lcom/twidroid/widget/MediumWidget;->k:Z
:goto_b6
:cond_b6
return-void
:cond_b7
sget-object v0, Lcom/twidroid/widget/MediumWidget;->C:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-nez v0, :cond_d6
sget v0, Lcom/twidroid/widget/MediumWidget;->a:I
const/4 v2, -0x1
if-eq v0, v2, :cond_b6
new-instance v0, Lcom/twidroid/widget/j;
invoke-direct {v0, v1}, Lcom/twidroid/widget/j;-><init>(Lcom/twidroid/widget/MediumWidget$1;)V
new-array v1, v4, [Lcom/twidroid/widget/i;
new-instance v2, Lcom/twidroid/widget/i;
invoke-direct {v2, p0, p1, p2}, Lcom/twidroid/widget/i;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
aput-object v2, v1, v10
invoke-virtual {v0, v1}, Lcom/twidroid/widget/j;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
goto :goto_b6
:cond_d6
sget v0, Lcom/twidroid/widget/MediumWidget;->a:I
if-gez v0, :cond_dc
sput v10, Lcom/twidroid/widget/MediumWidget;->a:I
:cond_dc
sget v0, Lcom/twidroid/widget/MediumWidget;->a:I
sget v2, Lcom/twidroid/widget/MediumWidget;->b:I
mul-int/2addr v2, v0
sget-object v0, Lcom/twidroid/widget/MediumWidget;->C:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lt v2, v0, :cond_fb
new-instance v0, Lcom/twidroid/widget/j;
invoke-direct {v0, v1}, Lcom/twidroid/widget/j;-><init>(Lcom/twidroid/widget/MediumWidget$1;)V
new-array v1, v4, [Lcom/twidroid/widget/i;
new-instance v2, Lcom/twidroid/widget/i;
invoke-direct {v2, p0, p1, p2}, Lcom/twidroid/widget/i;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
aput-object v2, v1, v10
invoke-virtual {v0, v1}, Lcom/twidroid/widget/j;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
goto :goto_b6
:cond_fb
sget-object v0, Lcom/twidroid/widget/MediumWidget;->C:Ljava/util/ArrayList;
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
move-object v6, v0
check-cast v6, Lcom/twidroid/model/twitter/Tweet;
sget-object v0, Lcom/twidroid/widget/MediumWidget;->C:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
add-int/lit8 v3, v2, 0x1
if-eq v0, v3, :cond_1cb
sget-object v0, Lcom/twidroid/widget/MediumWidget;->C:Ljava/util/ArrayList;
add-int/lit8 v1, v2, 0x1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/Tweet;
move-object v7, v0
:goto_119
sget-object v0, Lcom/twidroid/widget/MediumWidget;->E:Landroid/widget/RemoteViews;
if-nez v0, :cond_120
invoke-static {p0}, Lcom/twidroid/widget/MediumWidget;->c(Landroid/content/Context;)V
:cond_120
invoke-static {p0}, Lcom/twidroid/widget/MediumWidget;->b(Landroid/content/Context;)V
if-eqz v6, :cond_175
sget-object v0, Lcom/twidroid/widget/MediumWidget;->E:Landroid/widget/RemoteViews;
const v1, 0x7f0901db
invoke-virtual {v6}, Lcom/twidroid/model/twitter/Tweet;->e()Ljava/lang/String;
move-result-object v2
invoke-virtual {v6}, Lcom/twidroid/model/twitter/Tweet;->i()J
move-result-wide v3
invoke-virtual {v6}, Lcom/twidroid/model/twitter/Tweet;->d()Ljava/lang/String;
move-result-object v5
invoke-static/range {v0 .. v5}, Lcom/twidroid/widget/MediumWidget;->a(Landroid/widget/RemoteViews;ILjava/lang/String;JLjava/lang/String;)V
sget-object v0, Lcom/twidroid/widget/MediumWidget;->E:Landroid/widget/RemoteViews;
const v1, 0x7f0901dd
invoke-static {p0, v6}, Lcom/twidroid/widget/MediumWidget;->a(Landroid/content/Context;Lcom/twidroid/model/twitter/Tweet;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
new-instance v0, Landroid/text/SpannableStringBuilder;
invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V
invoke-virtual {v6}, Lcom/twidroid/model/twitter/Tweet;->e()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_157
invoke-virtual {v6}, Lcom/twidroid/model/twitter/Tweet;->e()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
:cond_157
invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I
move-result v1
const-string v2, " "
invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
invoke-virtual {v6}, Lcom/twidroid/model/twitter/Tweet;->n()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
invoke-virtual {v0, v9, v10, v1, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
invoke-virtual {v0, v8, v10, v1, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
sget-object v1, Lcom/twidroid/widget/MediumWidget;->E:Landroid/widget/RemoteViews;
const v2, 0x7f0901dc
invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
:cond_175
if-eqz v7, :cond_80
sget-object v0, Lcom/twidroid/widget/MediumWidget;->E:Landroid/widget/RemoteViews;
const v1, 0x7f0901df
invoke-virtual {v7}, Lcom/twidroid/model/twitter/Tweet;->e()Ljava/lang/String;
move-result-object v2
invoke-virtual {v7}, Lcom/twidroid/model/twitter/Tweet;->i()J
move-result-wide v3
invoke-virtual {v7}, Lcom/twidroid/model/twitter/Tweet;->d()Ljava/lang/String;
move-result-object v5
invoke-static/range {v0 .. v5}, Lcom/twidroid/widget/MediumWidget;->a(Landroid/widget/RemoteViews;ILjava/lang/String;JLjava/lang/String;)V
sget-object v0, Lcom/twidroid/widget/MediumWidget;->E:Landroid/widget/RemoteViews;
const v1, 0x7f0901e1
invoke-static {p0, v7}, Lcom/twidroid/widget/MediumWidget;->a(Landroid/content/Context;Lcom/twidroid/model/twitter/Tweet;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
new-instance v0, Landroid/text/SpannableStringBuilder;
invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V
invoke-virtual {v7}, Lcom/twidroid/model/twitter/Tweet;->e()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I
move-result v1
const-string v2, " "
invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
invoke-virtual {v7}, Lcom/twidroid/model/twitter/Tweet;->n()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
invoke-virtual {v0, v9, v10, v1, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
invoke-virtual {v0, v8, v10, v1, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
sget-object v1, Lcom/twidroid/widget/MediumWidget;->E:Landroid/widget/RemoteViews;
const v2, 0x7f0901e0
invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
goto/16 :goto_80
:catch_1c3
move-exception v0
sput-boolean v10, Lcom/twidroid/widget/MediumWidget;->k:Z
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto/16 :goto_b4
:cond_1cb
move-object v7, v1
goto/16 :goto_119
.end method
.method private static b(Landroid/content/Context;)V
.registers 5
sget-object v0, Lcom/twidroid/widget/MediumWidget;->E:Landroid/widget/RemoteViews;
const v1, 0x7f09024d
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {p0}, Lcom/twidroid/d/v;->p(Landroid/content/Context;)I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const v3, 0x7f0c033c
invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
sget-object v0, Lcom/twidroid/widget/MediumWidget;->E:Landroid/widget/RemoteViews;
const v1, 0x7f09024c
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {p0}, Lcom/twidroid/d/v;->m(Landroid/content/Context;)I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const v3, 0x7f0c033b
invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
return-void
.end method
.method private static c(Landroid/content/Context;)V
.registers 16
const v14, 0x7f0901de
const/high16 v13, 0x800
const/4 v12, 0x1
const/4 v11, 0x4
const/4 v10, 0x0
new-instance v0, Landroid/widget/RemoteViews;
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
const v2, 0x7f0300a0
invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/twidroid/widget/MediumWidget;->E:Landroid/widget/RemoteViews;
sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
const-string v1, "HTC"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_27
sget-object v0, Lcom/twidroid/widget/MediumWidget;->E:Landroid/widget/RemoteViews;
const/16 v1, 0x8
invoke-virtual {v0, v14, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
:cond_27
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/twidroid/TwidroidClient;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "TabName"
const-string v2, "TAB_TIMELINE"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
new-instance v1, Landroid/content/Intent;
const-class v2, Lcom/twidroid/TwidroidClient;
invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "foobar://"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v3
invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
move-result-object v1
const-string v2, "TabName"
const-string v3, "TAB_DIRECT_MESSAGES"
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v1
new-instance v2, Landroid/content/Intent;
const-class v3, Lcom/twidroid/TwidroidClient;
invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "foobar://"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v4
invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
move-result-object v2
const-string v3, "TabName"
const-string v4, "TAB_SEARCH"
invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v2
new-instance v3, Landroid/content/Intent;
const-class v4, Lcom/twidroid/TwidroidClient;
invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "foobar://"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v5
invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v4
invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
move-result-object v3
const-string v4, "TabName"
const-string v5, "TAB_MENTIONS"
invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v3
sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;
const-string v5, "HTC"
invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v4
if-eqz v4, :cond_1a0
sget-object v4, Lcom/twidroid/widget/MediumWidget;->E:Landroid/widget/RemoteViews;
const v5, 0x7f0901f8
new-instance v6, Landroid/content/Intent;
const-class v7, Lcom/twidroid/TwidroidClient;
invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v7, "twidroid.open_tweet_box"
invoke-virtual {v6, v7, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
move-result-object v6
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "foobar://"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v8
invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v7
invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
move-result-object v6
invoke-static {p0, v10, v6, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v6
invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
:goto_102
sget-object v4, Lcom/twidroid/widget/MediumWidget;->E:Landroid/widget/RemoteViews;
const v5, 0x7f0901f7
invoke-static {p0, v11, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v6
invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
sget-object v4, Lcom/twidroid/widget/MediumWidget;->E:Landroid/widget/RemoteViews;
const v5, 0x7f0901da
invoke-static {p0, v11, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v6
invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
sget-object v4, Lcom/twidroid/widget/MediumWidget;->E:Landroid/widget/RemoteViews;
invoke-static {p0, v11, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v5
invoke-virtual {v4, v14, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
sget-object v4, Lcom/twidroid/widget/MediumWidget;->E:Landroid/widget/RemoteViews;
const v5, 0x7f0901e2
invoke-static {p0, v11, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v6
invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
sget-object v4, Lcom/twidroid/widget/MediumWidget;->E:Landroid/widget/RemoteViews;
const v5, 0x7f0901dc
invoke-static {p0, v11, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v6
invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
sget-object v4, Lcom/twidroid/widget/MediumWidget;->E:Landroid/widget/RemoteViews;
const v5, 0x7f0901e0
invoke-static {p0, v11, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v6
invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
sget-object v4, Lcom/twidroid/widget/MediumWidget;->E:Landroid/widget/RemoteViews;
const v5, 0x7f0901e4
invoke-static {p0, v11, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
invoke-virtual {v4, v5, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
sget-object v0, Lcom/twidroid/widget/MediumWidget;->E:Landroid/widget/RemoteViews;
const v4, 0x7f09024d
invoke-static {p0, v12, v3, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v3
invoke-virtual {v0, v4, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
sget-object v0, Lcom/twidroid/widget/MediumWidget;->E:Landroid/widget/RemoteViews;
const v3, 0x7f09024c
const/4 v4, 0x2
invoke-static {p0, v4, v1, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v1
invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
sget-object v0, Lcom/twidroid/widget/MediumWidget;->E:Landroid/widget/RemoteViews;
const v1, 0x7f090049
const/4 v3, 0x3
invoke-static {p0, v3, v2, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
new-instance v0, Landroid/content/Intent;
const-string v1, "twidroid.widget.SCROLLDOWN"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-static {p0, v10, v0, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
sget-object v1, Lcom/twidroid/widget/MediumWidget;->E:Landroid/widget/RemoteViews;
const v2, 0x7f09024e
invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
new-instance v0, Landroid/content/Intent;
const-string v1, "twidroid.widget.SCROLLUP"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-static {p0, v10, v0, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
sget-object v1, Lcom/twidroid/widget/MediumWidget;->E:Landroid/widget/RemoteViews;
const v2, 0x7f09024b
invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
return-void
:cond_1a0
sget-object v4, Lcom/twidroid/widget/MediumWidget;->E:Landroid/widget/RemoteViews;
const v5, 0x7f0901f8
new-instance v6, Landroid/content/Intent;
const-class v7, Lcom/twidroid/activity/SendTweet;
invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-static {p0, v10, v6, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v6
invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
goto/16 :goto_102
.end method
.method public onDeleted(Landroid/content/Context;[I)V
.registers 5
invoke-super {p0, p1, p2}, Lcom/twidroid/widget/BaseWidget;->onDeleted(Landroid/content/Context;[I)V
const-string v0, "MediumWidget"
const-string v1, "onDeleted"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public onDisabled(Landroid/content/Context;)V
.registers 6
const/4 v0, 0x0
sput-object v0, Lcom/twidroid/widget/MediumWidget;->E:Landroid/widget/RemoteViews;
invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
new-instance v1, Landroid/content/ComponentName;
const-string v2, "com.twidroid"
const-string v3, ".widget.MediumWidget"
invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
const/4 v2, 0x2
const/4 v3, 0x1
invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
return-void
.end method
.method public onEnabled(Landroid/content/Context;)V
.registers 7
const/4 v4, 0x1
const-string v0, "MediumWidget"
const-string v1, "::onEnabled"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
sput-boolean v0, Lcom/twidroid/widget/MediumWidget;->k:Z
const/4 v0, 0x0
sput-object v0, Lcom/twidroid/widget/MediumWidget;->E:Landroid/widget/RemoteViews;
invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
new-instance v1, Landroid/content/ComponentName;
const-string v2, "com.twidroid"
const-string v3, ".widget.MediumWidget"
invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
sput-object v0, Lcom/twidroid/widget/MediumWidget;->G:Landroid/content/SharedPreferences;
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 6
const/4 v2, 0x0
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string v1, "android.intent.action.CONFIGURATION_CHANGED"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_10
const/4 v1, 0x0
sput-object v1, Lcom/twidroid/widget/MediumWidget;->E:Landroid/widget/RemoteViews;
:cond_10
const-string v1, "android.appwidget.action.APPWIDGET_DELETED"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2d
invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
const-string v1, "appWidgetId"
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v0
if-eqz v0, :cond_2c
const/4 v1, 0x1
new-array v1, v1, [I
aput v0, v1, v2
invoke-virtual {p0, p1, v1}, Lcom/twidroid/widget/MediumWidget;->onDeleted(Landroid/content/Context;[I)V
:cond_2c
:goto_2c
return-void
:cond_2d
invoke-super {p0, p1, p2}, Lcom/twidroid/widget/BaseWidget;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
goto :goto_2c
.end method
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
.registers 5
const/4 v0, 0x0
sput v0, Lcom/twidroid/widget/MediumWidget;->a:I
sput-boolean v0, Lcom/twidroid/widget/MediumWidget;->z:Z
invoke-static {p1, p2, v0}, Lcom/twidroid/widget/MediumWidget;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
return-void
.end method