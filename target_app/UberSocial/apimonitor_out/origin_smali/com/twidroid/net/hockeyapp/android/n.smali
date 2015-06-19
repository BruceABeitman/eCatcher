.class public Lcom/twidroid/net/hockeyapp/android/n;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field a:Landroid/app/Activity;

.field b:Ljava/util/ArrayList;

.field c:Lorg/json/JSONObject;

.field d:Lcom/twidroid/net/hockeyapp/android/o;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/twidroid/net/hockeyapp/android/o;)V
    .registers 4

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/twidroid/net/hockeyapp/android/n;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/twidroid/net/hockeyapp/android/n;->d:Lcom/twidroid/net/hockeyapp/android/o;

    invoke-direct {p0, p2}, Lcom/twidroid/net/hockeyapp/android/n;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/twidroid/net/hockeyapp/android/n;->c()V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .registers 4

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_5

    move-result p2

    :goto_4
    return p2

    :catch_5
    move-exception v0

    goto :goto_4
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13

    const/4 v2, 0x1

    const/high16 v8, 0x41a0

    const/4 v3, 0x0

    instance-of v0, p2, Landroid/widget/TextView;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/n;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090003

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_15
    invoke-virtual {p0, p1}, Lcom/twidroid/net/hockeyapp/android/n;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/twidroid/net/hockeyapp/android/n;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v5, v4, Landroid/util/DisplayMetrics;->density:F

    if-nez p1, :cond_53

    move v4, v2

    :goto_33
    mul-float v6, v8, v5

    float-to-int v6, v6

    mul-int/lit8 v6, v6, 0x1

    mul-float v7, v8, v5

    float-to-int v7, v7

    if-eqz v4, :cond_55

    :goto_3d
    mul-int/2addr v2, v7

    mul-float v4, v8, v5

    float-to-int v4, v4

    invoke-virtual {v1, v6, v2, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, -0x100

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x2

    const/high16 v2, 0x4180

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object p2

    :cond_53
    move v4, v3

    goto :goto_33

    :cond_55
    move v2, v3

    goto :goto_3d
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object p2

    :goto_4
    return-object p2

    :catch_5
    move-exception v0

    goto :goto_4
.end method

.method private a(Ljava/lang/String;)V
    .registers 8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/twidroid/net/hockeyapp/android/n;->c:Lorg/json/JSONObject;

    :try_start_7
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twidroid/net/hockeyapp/android/n;->b:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/n;->d:Lcom/twidroid/net/hockeyapp/android/o;

    invoke-interface {v0}, Lcom/twidroid/net/hockeyapp/android/o;->c()I

    move-result v1

    const/4 v0, 0x0

    move v5, v0

    move v0, v1

    move v1, v5

    :goto_1d
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_40

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "version"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-le v4, v0, :cond_37

    iput-object v3, p0, Lcom/twidroid/net/hockeyapp/android/n;->c:Lorg/json/JSONObject;

    const-string v0, "version"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_37
    iget-object v4, p0, Lcom/twidroid/net/hockeyapp/android/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_3c} :catch_3f

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :catch_3f
    move-exception v0

    :cond_40
    return-void
.end method

.method private b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    const/4 v3, -0x1

    const/4 v2, -0x2

    const/high16 v5, 0x41a0

    const/16 v6, 0x539

    if-eqz p2, :cond_e

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4c

    :cond_e
    new-instance p2, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/n;->a:Landroid/app/Activity;

    invoke-direct {p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/n;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/twidroid/net/hockeyapp/android/n;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float v3, v5, v2

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    mul-float/2addr v4, v2

    float-to-int v4, v4

    mul-float/2addr v2, v5

    float-to-int v2, v2

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_4c
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Lcom/twidroid/net/hockeyapp/android/n;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6c

    const-string v1, "<em>No information.</em>"

    const-string v2, "text/html"

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6b
    return-object p2

    :cond_6c
    const-string v2, "text/html"

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/n;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/twidroid/net/hockeyapp/android/n$1;

    invoke-direct {v1, p0}, Lcom/twidroid/net/hockeyapp/android/n$1;-><init>(Lcom/twidroid/net/hockeyapp/android/n;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/n;->c:Lorg/json/JSONObject;

    const-string v2, "shortversion"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/twidroid/net/hockeyapp/android/n;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/n;->c:Lorg/json/JSONObject;

    const-string v2, "version"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/twidroid/net/hockeyapp/android/n;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 9

    const/high16 v7, 0x4480

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/n;->c:Lorg/json/JSONObject;

    const-string v1, "appsize"

    invoke-static {v0, v1, v6}, Lcom/twidroid/net/hockeyapp/android/n;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/n;->c:Lorg/json/JSONObject;

    const-string v2, "timestamp"

    invoke-static {v1, v2, v6}, Lcom/twidroid/net/hockeyapp/android/n;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    new-instance v3, Ljava/util/Date;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v1, v4

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd.MM.yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%.2f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    int-to-float v0, v0

    div-float/2addr v0, v7

    div-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 8

    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/n;->d:Lcom/twidroid/net/hockeyapp/android/o;

    invoke-interface {v0}, Lcom/twidroid/net/hockeyapp/android/o;->c()I

    move-result v4

    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/n;->b:Ljava/util/ArrayList;

    div-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const/4 v2, 0x0

    const-string v1, ""

    :try_start_13
    const-string v3, "version"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "shortversion"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_1e} :catch_64

    move-result-object v1

    :goto_1f
    const/4 v3, 0x0

    rem-int/lit8 v5, p1, 0x2

    packed-switch v5, :pswitch_data_66

    move-object v0, v3

    :goto_26
    return-object v0

    :pswitch_27
    if-nez p1, :cond_2c

    const-string v0, "Release Notes:"

    goto :goto_26

    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Version "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v2, v4, :cond_58

    const-string v0, "[INSTALLED]"

    :goto_4f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    :cond_58
    const-string v0, ""

    goto :goto_4f

    :pswitch_5b
    const-string v1, "notes"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/twidroid/net/hockeyapp/android/n;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    :catch_64
    move-exception v3

    goto :goto_1f

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_27
        :pswitch_5b
    .end packed-switch
.end method

.method public getItemId(I)J
    .registers 4

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    rem-int/lit8 v0, p1, 0x2

    packed-switch v0, :pswitch_data_12

    const/4 v0, 0x0

    :goto_6
    return-object v0

    :pswitch_7
    invoke-direct {p0, p1, p2, p3}, Lcom/twidroid/net/hockeyapp/android/n;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_6

    :pswitch_c
    invoke-direct {p0, p1, p2, p3}, Lcom/twidroid/net/hockeyapp/android/n;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_6

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method
