.class Lcom/twidroid/activity/ae;
.super Lcom/ubermedia/a/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/twidroid/activity/UberSocialSettings20;

.field private b:Landroid/preference/PreferenceScreen;


# direct methods
.method private constructor <init>(Lcom/twidroid/activity/UberSocialSettings20;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/ae;->a:Lcom/twidroid/activity/UberSocialSettings20;

    invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twidroid/activity/UberSocialSettings20;Lcom/twidroid/activity/UberSocialSettings20$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/twidroid/activity/ae;-><init>(Lcom/twidroid/activity/UberSocialSettings20;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/preference/PreferenceScreen;)Ljava/lang/Boolean;
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_2
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/twidroid/activity/ae;->b:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/twidroid/activity/ae;->a:Lcom/twidroid/activity/UberSocialSettings20;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialSettings20;->k:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/net/a/c/c;->v()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_19} :catch_1b

    move-result-object v0

    :goto_1a
    return-object v0

    :catch_1b
    move-exception v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1a
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, p1}, Lcom/twidroid/activity/ae;->a([Landroid/preference/PreferenceScreen;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .registers 12

    invoke-super {p0, p1}, Lcom/ubermedia/a/a;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_64

    :try_start_9
    iget-object v0, p0, Lcom/twidroid/activity/ae;->b:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v0, "HH:mm"

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/activity/ae;->b:Landroid/preference/PreferenceScreen;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/twidroid/net/a/c/c;->l:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/net/a/c/f;

    new-instance v3, Landroid/preference/Preference;

    iget-object v4, p0, Lcom/twidroid/activity/ae;->a:Lcom/twidroid/activity/UberSocialSettings20;

    invoke-direct {v3, v4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iget-object v4, v0, Lcom/twidroid/net/a/c/f;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget v4, v0, Lcom/twidroid/net/a/c/f;->a:I

    if-lez v4, :cond_65

    iget v0, v0, Lcom/twidroid/net/a/c/f;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_56
    iget-object v0, p0, Lcom/twidroid/activity/ae;->b:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_5b} :catch_5c

    goto :goto_31

    :catch_5c
    move-exception v0

    sget-object v1, Lcom/twidroid/activity/UberSocialSettings20;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_64
    return-void

    :cond_65
    :try_start_65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/twidroid/activity/ae;->a:Lcom/twidroid/activity/UberSocialSettings20;

    const v6, 0x7f0c02ba

    invoke-virtual {v5, v6}, Lcom/twidroid/activity/UberSocialSettings20;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    iget-wide v6, v0, Lcom/twidroid/net/a/c/f;->b:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_96} :catch_5c

    goto :goto_56
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/twidroid/activity/ae;->a(Ljava/lang/Boolean;)V

    return-void
.end method
