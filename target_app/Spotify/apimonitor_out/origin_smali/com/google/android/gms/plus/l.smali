.class final Lcom/google/android/gms/plus/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/plus/n;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/plus/l;->a:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/plus/l;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/graphics/drawable/Drawable;
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/plus/l;->a:Landroid/content/Context;

    const-string v1, "com.google.android.gms"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "com.google.android.gms"

    packed-switch p1, :pswitch_data_2c

    const-string v0, "ic_plusone_standard"

    :goto_14
    const-string v3, "drawable"

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1e
    return-object v0

    :pswitch_1f
    const-string v0, "ic_plusone_small"

    goto :goto_14

    :pswitch_22
    const-string v0, "ic_plusone_medium"

    goto :goto_14

    :pswitch_25
    const-string v0, "ic_plusone_tall"
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_27} :catch_28

    goto :goto_14

    :catch_28
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1e

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_22
        :pswitch_25
    .end packed-switch
.end method

.method public final a()Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/plus/l;->a:Landroid/content/Context;

    const-string v1, "com.google.android.gms"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_c} :catch_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :catch_e
    move-exception v0

    const/4 v0, 0x0

    goto :goto_d
.end method
