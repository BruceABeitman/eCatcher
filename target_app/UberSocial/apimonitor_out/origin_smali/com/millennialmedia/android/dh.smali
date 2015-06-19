.class Lcom/millennialmedia/android/dh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "Utils"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/view/View;)Lorg/json/JSONObject;
    .registers 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-nez p0, :cond_f

    const-string v1, "Utils"

    const-string v2, "Unable to calculate view dimensions for null view"

    invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    if-eqz v1, :cond_e

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    :try_start_23
    const-string v3, "x"

    const/4 v4, 0x0

    aget v4, v2, v4

    int-to-float v4, v4

    iget v5, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "y"

    const/4 v4, 0x1

    aget v2, v2, v4

    int-to-float v2, v2

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "width"

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "height"

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v1, v3, v1

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5a
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_5a} :catch_5b

    goto :goto_e

    :catch_5b
    move-exception v1

    const-string v2, "Utils"

    const-string v3, "Unable to build view dimensions"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e
.end method
