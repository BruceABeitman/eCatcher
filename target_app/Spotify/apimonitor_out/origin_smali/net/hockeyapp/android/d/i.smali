.class public final Lnet/hockeyapp/android/d/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field b:Lorg/json/JSONObject;

.field c:Lnet/hockeyapp/android/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/hockeyapp/android/g;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/hockeyapp/android/d/i;->c:Lnet/hockeyapp/android/g;

    invoke-direct {p0, p1}, Lnet/hockeyapp/android/d/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/hockeyapp/android/d/i;->a:Ljava/util/ArrayList;

    new-instance v1, Lnet/hockeyapp/android/d/i$1;

    invoke-direct {v1, p0}, Lnet/hockeyapp/android/d/i$1;-><init>(Lnet/hockeyapp/android/d/i;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    const/4 v1, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_7

    if-nez p1, :cond_9

    :cond_7
    move v0, v2

    :cond_8
    :goto_8
    return v0

    :cond_9
    :try_start_9
    new-instance v3, Ljava/util/Scanner;

    const-string v4, "\\-.*"

    const-string v5, ""

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Scanner;

    const-string v5, "\\-.*"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    const-string v5, "\\."

    invoke-virtual {v3, v5}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    const-string v5, "\\."

    invoke-virtual {v4, v5}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    :cond_2d
    invoke-virtual {v3}, Ljava/util/Scanner;->hasNextInt()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-virtual {v4}, Ljava/util/Scanner;->hasNextInt()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-virtual {v3}, Ljava/util/Scanner;->nextInt()I

    move-result v5

    invoke-virtual {v4}, Ljava/util/Scanner;->nextInt()I

    move-result v6

    if-lt v5, v6, :cond_8

    if-le v5, v6, :cond_2d

    move v0, v1

    goto :goto_8

    :cond_47
    invoke-virtual {v3}, Ljava/util/Scanner;->hasNextInt()Z

    move-result v3

    if-eqz v3, :cond_4f

    move v0, v1

    goto :goto_8

    :cond_4f
    invoke-virtual {v4}, Ljava/util/Scanner;->hasNextInt()Z
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_52} :catch_57

    move-result v1

    if-nez v1, :cond_8

    move v0, v2

    goto :goto_8

    :catch_57
    move-exception v0

    move v0, v2

    goto :goto_8
.end method

.method private static a(Lorg/json/JSONObject;)I
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "version"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v0

    :goto_7
    return v0

    :catch_8
    move-exception v1

    goto :goto_7
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)I
    .registers 3

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    :goto_4
    return v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4
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

    iput-object v0, p0, Lnet/hockeyapp/android/d/i;->b:Lorg/json/JSONObject;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/d/i;->a:Ljava/util/ArrayList;

    :try_start_e
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/hockeyapp/android/d/i;->c:Lnet/hockeyapp/android/g;

    invoke-interface {v0}, Lnet/hockeyapp/android/g;->getCurrentVersionCode()I

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

    iput-object v3, p0, Lnet/hockeyapp/android/d/i;->b:Lorg/json/JSONObject;

    const-string v0, "version"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_37
    iget-object v4, p0, Lnet/hockeyapp/android/d/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_3c} :catch_41
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_3c} :catch_3f

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :catch_3f
    move-exception v0

    :cond_40
    :goto_40
    return-void

    :catch_41
    move-exception v0

    goto :goto_40
.end method

.method private static b(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    :try_start_2
    const-string v1, "shortversion"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v1

    goto :goto_8
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/hockeyapp/android/d/i;->b:Lorg/json/JSONObject;

    const-string v2, "shortversion"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lnet/hockeyapp/android/d/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/hockeyapp/android/d/i;->b:Lorg/json/JSONObject;

    const-string v2, "version"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lnet/hockeyapp/android/d/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

.method public final b()Ljava/lang/String;
    .registers 8

    const/high16 v6, 0x4480

    iget-object v0, p0, Lnet/hockeyapp/android/d/i;->b:Lorg/json/JSONObject;

    const-string v1, "appsize"

    invoke-static {v0, v1}, Lnet/hockeyapp/android/d/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lnet/hockeyapp/android/d/i;->b:Lorg/json/JSONObject;

    const-string v2, "timestamp"

    invoke-static {v1, v2}, Lnet/hockeyapp/android/d/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)I

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

    const/4 v4, 0x0

    int-to-float v0, v0

    div-float/2addr v0, v6

    div-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v4

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

.method public final c()Ljava/lang/String;
    .registers 11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<html>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<body style=\'padding: 0px 0px 20px 0px\'>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iget-object v1, p0, Lnet/hockeyapp/android/d/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-lez v1, :cond_2a

    const-string v2, "<hr style=\'border-top: 1px solid #c8c8c8; border-bottom: 0px; margin: 40px 10px 0px 10px;\' />"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lnet/hockeyapp/android/d/i;->a(Lorg/json/JSONObject;)I

    move-result v2

    invoke-static {v0}, Lnet/hockeyapp/android/d/i;->b(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "<div style=\'padding: 20px 10px 10px;\'><strong>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_80

    const-string v2, "Newest version:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_43
    const-string v2, "</strong></div>"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notes"

    const-string v6, ""

    invoke-static {v0, v5, v6}, Lnet/hockeyapp/android/d/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "<div style=\'padding: 0px 10px;\'>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_b4

    const-string v0, "<em>No information.</em>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_70
    const-string v0, "</div>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_17

    :cond_80
    iget-object v7, p0, Lnet/hockeyapp/android/d/i;->c:Lnet/hockeyapp/android/g;

    invoke-interface {v7}, Lnet/hockeyapp/android/g;->getCurrentVersionCode()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Version "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "): "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v2, v7, :cond_b1

    const-string v2, "[INSTALLED]"

    :goto_a5
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_43

    :cond_b1
    const-string v2, ""

    goto :goto_a5

    :cond_b4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_70

    :cond_b8
    const-string v0, "</body>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</html>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
