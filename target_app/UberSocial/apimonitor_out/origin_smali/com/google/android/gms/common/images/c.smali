.class final Lcom/google/android/gms/common/images/c;
.super Lcom/google/android/gms/internal/ia;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/common/images/c;->a(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ia;-><init>(I)V

    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .registers 4

    const/high16 v2, 0x10

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_28

    const/4 v1, 0x1

    :goto_14
    if-eqz v1, :cond_2a

    invoke-static {}, Lcom/google/android/gms/internal/jo;->a()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-static {v0}, Lcom/google/android/gms/common/images/b;->a(Landroid/app/ActivityManager;)I

    move-result v0

    :goto_20
    mul-int/2addr v0, v2

    const v1, 0x3ea8f5c3

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_28
    const/4 v1, 0x0

    goto :goto_14

    :cond_2a
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    goto :goto_20
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/images/i;Landroid/graphics/Bitmap;)I
    .registers 5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method protected synthetic a(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/google/android/gms/common/images/i;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/images/c;->a(Lcom/google/android/gms/common/images/i;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method protected a(ZLcom/google/android/gms/common/images/i;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ia;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected synthetic a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    check-cast p2, Lcom/google/android/gms/common/images/i;

    check-cast p3, Landroid/graphics/Bitmap;

    check-cast p4, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/images/c;->a(ZLcom/google/android/gms/common/images/i;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method
