.class Lcom/google/android/gms/plus/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/plus/w;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/plus/v;->a:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/plus/s$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/plus/v;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/graphics/drawable/Drawable;
    .registers 6

    packed-switch p1, :pswitch_data_2c

    const-string v0, "ic_plusone_standard_off_client"

    :goto_5
    iget-object v1, p0, Lcom/google/android/gms/plus/v;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "drawable"

    iget-object v3, p0, Lcom/google/android/gms/plus/v;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/plus/v;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :pswitch_22
    const-string v0, "ic_plusone_small_off_client"

    goto :goto_5

    :pswitch_25
    const-string v0, "ic_plusone_medium_off_client"

    goto :goto_5

    :pswitch_28
    const-string v0, "ic_plusone_tall_off_client"

    goto :goto_5

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_22
        :pswitch_25
        :pswitch_28
    .end packed-switch
.end method

.method public a()Z
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/plus/v;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "ic_plusone_small_off_client"

    const-string v2, "drawable"

    iget-object v3, p0, Lcom/google/android/gms/plus/v;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/plus/v;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "ic_plusone_medium_off_client"

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/google/android/gms/plus/v;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/plus/v;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "ic_plusone_tall_off_client"

    const-string v4, "drawable"

    iget-object v5, p0, Lcom/google/android/gms/plus/v;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/plus/v;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "ic_plusone_standard_off_client"

    const-string v5, "drawable"

    iget-object v6, p0, Lcom/google/android/gms/plus/v;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v0, :cond_5a

    if-eqz v1, :cond_5a

    if-eqz v2, :cond_5a

    if-eqz v3, :cond_5a

    const/4 v0, 0x1

    :goto_59
    return v0

    :cond_5a
    const/4 v0, 0x0

    goto :goto_59
.end method
