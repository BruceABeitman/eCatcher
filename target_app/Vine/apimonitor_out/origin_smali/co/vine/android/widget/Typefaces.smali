.class public Lco/vine/android/widget/Typefaces;
.super Ljava/lang/Object;
.source "Typefaces.java"


# static fields
.field public static final WEIGHT_BOLD:I = 0x4

.field public static final WEIGHT_LIGHT:I = 0x1

.field public static final WEIGHT_MEDIUM:I = 0x3

.field public static final WEIGHT_NORMAL:I = 0x2

.field private static sInstance:Lco/vine/android/widget/Typefaces;


# instance fields
.field public final boldContent:Landroid/graphics/Typeface;

.field public final boldContentBold:Landroid/graphics/Typeface;

.field public final boldContentBoldItalic:Landroid/graphics/Typeface;

.field public final boldContentDetail:Landroid/graphics/Typeface;

.field public final boldContentItalic:Landroid/graphics/Typeface;

.field public final lightContent:Landroid/graphics/Typeface;

.field public final lightContentBold:Landroid/graphics/Typeface;

.field public final lightContentBoldItalic:Landroid/graphics/Typeface;

.field public final lightContentDetail:Landroid/graphics/Typeface;

.field public final lightContentItalic:Landroid/graphics/Typeface;

.field public final mediumContent:Landroid/graphics/Typeface;

.field public final mediumContentBold:Landroid/graphics/Typeface;

.field public final mediumContentBoldItalic:Landroid/graphics/Typeface;

.field public final mediumContentDetail:Landroid/graphics/Typeface;

.field public final mediumContentItalic:Landroid/graphics/Typeface;

.field public final regularContent:Landroid/graphics/Typeface;

.field public final regularContentBold:Landroid/graphics/Typeface;

.field public final regularContentBoldItalic:Landroid/graphics/Typeface;

.field public final regularContentDetail:Landroid/graphics/Typeface;

.field public final regularContentItalic:Landroid/graphics/Typeface;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 9

    const/4 v6, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v5, "fonts/Roboto-Regular.ttf"

    invoke-static {v3, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, p0, Lco/vine/android/widget/Typefaces;->regularContent:Landroid/graphics/Typeface;

    const-string v5, "fonts/Roboto-Italic.ttf"

    invoke-static {v3, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lco/vine/android/widget/Typefaces;->regularContentItalic:Landroid/graphics/Typeface;

    const-string v5, "fonts/Roboto-Bold.ttf"

    invoke-static {v3, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lco/vine/android/widget/Typefaces;->regularContentBold:Landroid/graphics/Typeface;

    iget-object v5, p0, Lco/vine/android/widget/Typefaces;->regularContentBold:Landroid/graphics/Typeface;

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lco/vine/android/widget/Typefaces;->regularContentBoldItalic:Landroid/graphics/Typeface;

    iput-object v4, p0, Lco/vine/android/widget/Typefaces;->regularContentDetail:Landroid/graphics/Typeface;

    const-string v5, "fonts/Roboto-Bold.ttf"

    invoke-static {v3, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/widget/Typefaces;->boldContent:Landroid/graphics/Typeface;

    const-string v5, "fonts/Roboto-BoldItalic.ttf"

    invoke-static {v3, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lco/vine/android/widget/Typefaces;->boldContentItalic:Landroid/graphics/Typeface;

    iput-object v0, p0, Lco/vine/android/widget/Typefaces;->boldContentBold:Landroid/graphics/Typeface;

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lco/vine/android/widget/Typefaces;->boldContentBoldItalic:Landroid/graphics/Typeface;

    iput-object v0, p0, Lco/vine/android/widget/Typefaces;->boldContentDetail:Landroid/graphics/Typeface;

    const-string v5, "fonts/Roboto-Medium.ttf"

    invoke-static {v3, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/widget/Typefaces;->mediumContent:Landroid/graphics/Typeface;

    const-string v5, "fonts/Roboto-MediumItalic.ttf"

    invoke-static {v3, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lco/vine/android/widget/Typefaces;->mediumContentItalic:Landroid/graphics/Typeface;

    iget-object v5, p0, Lco/vine/android/widget/Typefaces;->boldContent:Landroid/graphics/Typeface;

    iput-object v5, p0, Lco/vine/android/widget/Typefaces;->mediumContentBold:Landroid/graphics/Typeface;

    iget-object v5, p0, Lco/vine/android/widget/Typefaces;->mediumContentBold:Landroid/graphics/Typeface;

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lco/vine/android/widget/Typefaces;->mediumContentBoldItalic:Landroid/graphics/Typeface;

    iput-object v2, p0, Lco/vine/android/widget/Typefaces;->mediumContentDetail:Landroid/graphics/Typeface;

    const-string v5, "fonts/Roboto-Light.ttf"

    invoke-static {v3, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/widget/Typefaces;->lightContent:Landroid/graphics/Typeface;

    const-string v5, "fonts/Roboto-LightItalic.ttf"

    invoke-static {v3, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lco/vine/android/widget/Typefaces;->lightContentItalic:Landroid/graphics/Typeface;

    iget-object v5, p0, Lco/vine/android/widget/Typefaces;->regularContent:Landroid/graphics/Typeface;

    iput-object v5, p0, Lco/vine/android/widget/Typefaces;->lightContentBold:Landroid/graphics/Typeface;

    iget-object v5, p0, Lco/vine/android/widget/Typefaces;->lightContentBold:Landroid/graphics/Typeface;

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lco/vine/android/widget/Typefaces;->lightContentBoldItalic:Landroid/graphics/Typeface;

    iput-object v1, p0, Lco/vine/android/widget/Typefaces;->lightContentDetail:Landroid/graphics/Typeface;

    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;
    .registers 3

    const-class v1, Lco/vine/android/widget/Typefaces;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lco/vine/android/widget/Typefaces;->sInstance:Lco/vine/android/widget/Typefaces;

    if-nez v0, :cond_e

    new-instance v0, Lco/vine/android/widget/Typefaces;

    invoke-direct {v0, p0}, Lco/vine/android/widget/Typefaces;-><init>(Landroid/content/Context;)V

    sput-object v0, Lco/vine/android/widget/Typefaces;->sInstance:Lco/vine/android/widget/Typefaces;

    :cond_e
    sget-object v0, Lco/vine/android/widget/Typefaces;->sInstance:Lco/vine/android/widget/Typefaces;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getContentTypeface(II)Landroid/graphics/Typeface;
    .registers 4

    packed-switch p2, :pswitch_data_74

    :pswitch_3
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_62

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_62

    iget-object v0, p0, Lco/vine/android/widget/Typefaces;->regularContentBoldItalic:Landroid/graphics/Typeface;

    :goto_d
    return-object v0

    :pswitch_e
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_19

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_19

    iget-object v0, p0, Lco/vine/android/widget/Typefaces;->lightContentBoldItalic:Landroid/graphics/Typeface;

    goto :goto_d

    :cond_19
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_20

    iget-object v0, p0, Lco/vine/android/widget/Typefaces;->lightContentBold:Landroid/graphics/Typeface;

    goto :goto_d

    :cond_20
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_27

    iget-object v0, p0, Lco/vine/android/widget/Typefaces;->lightContentItalic:Landroid/graphics/Typeface;

    goto :goto_d

    :cond_27
    iget-object v0, p0, Lco/vine/android/widget/Typefaces;->lightContent:Landroid/graphics/Typeface;

    goto :goto_d

    :pswitch_2a
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_35

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_35

    iget-object v0, p0, Lco/vine/android/widget/Typefaces;->mediumContentBoldItalic:Landroid/graphics/Typeface;

    goto :goto_d

    :cond_35
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lco/vine/android/widget/Typefaces;->mediumContentBold:Landroid/graphics/Typeface;

    goto :goto_d

    :cond_3c
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_43

    iget-object v0, p0, Lco/vine/android/widget/Typefaces;->mediumContentItalic:Landroid/graphics/Typeface;

    goto :goto_d

    :cond_43
    iget-object v0, p0, Lco/vine/android/widget/Typefaces;->mediumContent:Landroid/graphics/Typeface;

    goto :goto_d

    :pswitch_46
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_51

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_51

    iget-object v0, p0, Lco/vine/android/widget/Typefaces;->boldContentBoldItalic:Landroid/graphics/Typeface;

    goto :goto_d

    :cond_51
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_58

    iget-object v0, p0, Lco/vine/android/widget/Typefaces;->boldContentBold:Landroid/graphics/Typeface;

    goto :goto_d

    :cond_58
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lco/vine/android/widget/Typefaces;->boldContentItalic:Landroid/graphics/Typeface;

    goto :goto_d

    :cond_5f
    iget-object v0, p0, Lco/vine/android/widget/Typefaces;->boldContent:Landroid/graphics/Typeface;

    goto :goto_d

    :cond_62
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_69

    iget-object v0, p0, Lco/vine/android/widget/Typefaces;->regularContentBold:Landroid/graphics/Typeface;

    goto :goto_d

    :cond_69
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_70

    iget-object v0, p0, Lco/vine/android/widget/Typefaces;->regularContentItalic:Landroid/graphics/Typeface;

    goto :goto_d

    :cond_70
    iget-object v0, p0, Lco/vine/android/widget/Typefaces;->regularContent:Landroid/graphics/Typeface;

    goto :goto_d

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_e
        :pswitch_3
        :pswitch_2a
        :pswitch_46
    .end packed-switch
.end method
