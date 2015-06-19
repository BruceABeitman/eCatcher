.class public Lco/vine/android/api/VineVenue;
.super Ljava/lang/Object;
.source "VineVenue.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final FOURSQUARE_CATEGORY:Ljava/util/regex/Pattern; = null

.field public static final TYPE_ARTS_ENTERTAINMENT:I = 0xb

.field public static final TYPE_BIG_HUMAN:I = 0x2

.field public static final TYPE_EBAY:I = 0x3

.field public static final TYPE_EDUCATION:I = 0x12

.field public static final TYPE_FACEBOOK:I = 0x5

.field public static final TYPE_GILT:I = 0x4

.field public static final TYPE_GOOGLE:I = 0x6

.field public static final TYPE_JETSETTER:I = 0x13

.field public static final TYPE_NATURE:I = 0xe

.field public static final TYPE_NIGHTLIFE:I = 0xd

.field public static final TYPE_OFFICE:I = 0xf

.field public static final TYPE_OTHER:I = 0x14

.field public static final TYPE_RESIDENTIAL:I = 0xa

.field public static final TYPE_RESTAURANT:I = 0xc

.field public static final TYPE_SHOPS:I = 0x10

.field public static final TYPE_SQUARE:I = 0x8

.field public static final TYPE_SQUARESPACE:I = 0x7

.field public static final TYPE_TRAVEL:I = 0x11

.field public static final TYPE_TWITTER:I = 0x9

.field public static final TYPE_VINE:I = 0x1

.field public static final iconMap:Landroid/util/SparseIntArray; = null

.field private static final serialVersionUID:J = 0x50674330882cfd0L

.field private static final venueMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public address:Ljava/lang/String;

.field public categoryIconUrl:Ljava/lang/String;

.field public categoryId:Ljava/lang/String;

.field public categoryName:Ljava/lang/String;

.field public city:Ljava/lang/String;

.field public countryCode:Ljava/lang/String;

.field public displayType:I

.field public state:Ljava/lang/String;

.field public venueName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/16 v7, 0xd

    const/16 v6, 0xb

    const/16 v5, 0x9

    const/4 v4, 0x4

    const/4 v3, 0x1

    const-string v0, "/([^/]+?)/([^/]+?)_\\d*?.png"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lco/vine/android/api/VineVenue;->FOURSQUARE_CATEGORY:Ljava/util/regex/Pattern;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    new-instance v0, Lco/vine/android/util/FlexibleStringHashMap;

    invoke-direct {v0}, Lco/vine/android/util/FlexibleStringHashMap;-><init>()V

    sput-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const v1, 0x7f020180

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const v2, 0x7f02016e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const v2, 0x7f02016f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const v1, 0x7f020172

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const v2, 0x7f020171

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const v2, 0x7f020173

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    const v2, 0x7f02017c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    const v2, 0x7f02017b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const v1, 0x7f02017e

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    const v2, 0x7f020178

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const v1, 0x7f020170

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    const v2, 0x7f020179

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const v1, 0x7f020176

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const/16 v1, 0xe

    const v2, 0x7f020175

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const/16 v1, 0xf

    const v2, 0x7f020177

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    const v2, 0x7f02017a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x11

    const v2, 0x7f02017d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x12

    const v2, 0x7f02017f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x13

    const v2, 0x7f020174

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    const v2, 0x7f02019b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "vine hq"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "verse hq"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "twitter nyc"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "twitter, inc"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "square, inc"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "squarespace hq"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "jetsetter"

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "gilt city"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "gilt groupe"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "facebook"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "ebay"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "big human"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "arts_entertainment"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "education"

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "event"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "food"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "home"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "nightlife"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "parks_outdoors"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "travel"

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "shops"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "nightlife"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "tech startup"

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p6, :cond_8d

    invoke-virtual {p6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    :goto_a
    if-eqz p2, :cond_10

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :cond_10
    iput-object p1, p0, Lco/vine/android/api/VineVenue;->categoryIconUrl:Ljava/lang/String;

    iput-object p2, p0, Lco/vine/android/api/VineVenue;->categoryName:Ljava/lang/String;

    iput-object p3, p0, Lco/vine/android/api/VineVenue;->categoryId:Ljava/lang/String;

    iput-object p4, p0, Lco/vine/android/api/VineVenue;->city:Ljava/lang/String;

    iput-object p5, p0, Lco/vine/android/api/VineVenue;->countryCode:Ljava/lang/String;

    iput-object p6, p0, Lco/vine/android/api/VineVenue;->venueName:Ljava/lang/String;

    iput-object p7, p0, Lco/vine/android/api/VineVenue;->state:Ljava/lang/String;

    iput-object p8, p0, Lco/vine/android/api/VineVenue;->address:Ljava/lang/String;

    sget-object v6, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gtz v6, :cond_78

    :cond_30
    sget-object v6, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_40

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gtz v6, :cond_78

    :cond_40
    if-eqz p1, :cond_78

    sget-object v6, Lco/vine/android/api/VineVenue;->FOURSQUARE_CATEGORY:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_78

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_67

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gtz v6, :cond_78

    :cond_67
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    :cond_78
    if-eqz v1, :cond_80

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gtz v6, :cond_86

    :cond_80
    const/16 v6, 0x14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_86
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lco/vine/android/api/VineVenue;->displayType:I

    return-void

    :cond_8d
    move-object v5, v0

    goto/16 :goto_a
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v1

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    check-cast v0, Lco/vine/android/api/VineVenue;

    iget v3, p0, Lco/vine/android/api/VineVenue;->displayType:I

    iget v4, v0, Lco/vine/android/api/VineVenue;->displayType:I

    if-eq v3, v4, :cond_1e

    move v1, v2

    goto :goto_4

    :cond_1e
    iget-object v3, p0, Lco/vine/android/api/VineVenue;->address:Ljava/lang/String;

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lco/vine/android/api/VineVenue;->address:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineVenue;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    :cond_2c
    move v1, v2

    goto :goto_4

    :cond_2e
    iget-object v3, v0, Lco/vine/android/api/VineVenue;->address:Ljava/lang/String;

    if-nez v3, :cond_2c

    :cond_32
    iget-object v3, p0, Lco/vine/android/api/VineVenue;->categoryIconUrl:Ljava/lang/String;

    if-eqz v3, :cond_42

    iget-object v3, p0, Lco/vine/android/api/VineVenue;->categoryIconUrl:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineVenue;->categoryIconUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    :cond_40
    move v1, v2

    goto :goto_4

    :cond_42
    iget-object v3, v0, Lco/vine/android/api/VineVenue;->categoryIconUrl:Ljava/lang/String;

    if-nez v3, :cond_40

    :cond_46
    iget-object v3, p0, Lco/vine/android/api/VineVenue;->categoryId:Ljava/lang/String;

    if-eqz v3, :cond_56

    iget-object v3, p0, Lco/vine/android/api/VineVenue;->categoryId:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineVenue;->categoryId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    :cond_54
    move v1, v2

    goto :goto_4

    :cond_56
    iget-object v3, v0, Lco/vine/android/api/VineVenue;->categoryId:Ljava/lang/String;

    if-nez v3, :cond_54

    :cond_5a
    iget-object v3, p0, Lco/vine/android/api/VineVenue;->categoryName:Ljava/lang/String;

    if-eqz v3, :cond_6a

    iget-object v3, p0, Lco/vine/android/api/VineVenue;->categoryName:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineVenue;->categoryName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6e

    :cond_68
    move v1, v2

    goto :goto_4

    :cond_6a
    iget-object v3, v0, Lco/vine/android/api/VineVenue;->categoryName:Ljava/lang/String;

    if-nez v3, :cond_68

    :cond_6e
    iget-object v3, p0, Lco/vine/android/api/VineVenue;->city:Ljava/lang/String;

    if-eqz v3, :cond_7e

    iget-object v3, p0, Lco/vine/android/api/VineVenue;->city:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineVenue;->city:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_82

    :cond_7c
    move v1, v2

    goto :goto_4

    :cond_7e
    iget-object v3, v0, Lco/vine/android/api/VineVenue;->city:Ljava/lang/String;

    if-nez v3, :cond_7c

    :cond_82
    iget-object v3, p0, Lco/vine/android/api/VineVenue;->countryCode:Ljava/lang/String;

    if-eqz v3, :cond_93

    iget-object v3, p0, Lco/vine/android/api/VineVenue;->countryCode:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineVenue;->countryCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_97

    :cond_90
    move v1, v2

    goto/16 :goto_4

    :cond_93
    iget-object v3, v0, Lco/vine/android/api/VineVenue;->countryCode:Ljava/lang/String;

    if-nez v3, :cond_90

    :cond_97
    iget-object v3, p0, Lco/vine/android/api/VineVenue;->state:Ljava/lang/String;

    if-eqz v3, :cond_a8

    iget-object v3, p0, Lco/vine/android/api/VineVenue;->state:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineVenue;->state:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ac

    :cond_a5
    move v1, v2

    goto/16 :goto_4

    :cond_a8
    iget-object v3, v0, Lco/vine/android/api/VineVenue;->state:Ljava/lang/String;

    if-nez v3, :cond_a5

    :cond_ac
    iget-object v3, p0, Lco/vine/android/api/VineVenue;->venueName:Ljava/lang/String;

    if-eqz v3, :cond_bd

    iget-object v3, p0, Lco/vine/android/api/VineVenue;->venueName:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineVenue;->venueName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_ba
    move v1, v2

    goto/16 :goto_4

    :cond_bd
    iget-object v3, v0, Lco/vine/android/api/VineVenue;->venueName:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_ba
.end method

.method public hashCode()I
    .registers 5

    const/4 v1, 0x0

    iget-object v2, p0, Lco/vine/android/api/VineVenue;->categoryIconUrl:Ljava/lang/String;

    if-eqz v2, :cond_74

    iget-object v2, p0, Lco/vine/android/api/VineVenue;->categoryIconUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/VineVenue;->categoryName:Ljava/lang/String;

    if-eqz v2, :cond_76

    iget-object v2, p0, Lco/vine/android/api/VineVenue;->categoryName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int v0, v3, v2

    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/VineVenue;->categoryId:Ljava/lang/String;

    if-eqz v2, :cond_78

    iget-object v2, p0, Lco/vine/android/api/VineVenue;->categoryId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_25
    add-int v0, v3, v2

    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/VineVenue;->city:Ljava/lang/String;

    if-eqz v2, :cond_7a

    iget-object v2, p0, Lco/vine/android/api/VineVenue;->city:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_33
    add-int v0, v3, v2

    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/VineVenue;->countryCode:Ljava/lang/String;

    if-eqz v2, :cond_7c

    iget-object v2, p0, Lco/vine/android/api/VineVenue;->countryCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_41
    add-int v0, v3, v2

    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/VineVenue;->venueName:Ljava/lang/String;

    if-eqz v2, :cond_7e

    iget-object v2, p0, Lco/vine/android/api/VineVenue;->venueName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4f
    add-int v0, v3, v2

    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/VineVenue;->state:Ljava/lang/String;

    if-eqz v2, :cond_80

    iget-object v2, p0, Lco/vine/android/api/VineVenue;->state:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5d
    add-int v0, v3, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lco/vine/android/api/VineVenue;->address:Ljava/lang/String;

    if-eqz v3, :cond_6b

    iget-object v1, p0, Lco/vine/android/api/VineVenue;->address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_6b
    add-int v0, v2, v1

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VineVenue;->displayType:I

    add-int v0, v1, v2

    return v0

    :cond_74
    move v0, v1

    goto :goto_b

    :cond_76
    move v2, v1

    goto :goto_17

    :cond_78
    move v2, v1

    goto :goto_25

    :cond_7a
    move v2, v1

    goto :goto_33

    :cond_7c
    move v2, v1

    goto :goto_41

    :cond_7e
    move v2, v1

    goto :goto_4f

    :cond_80
    move v2, v1

    goto :goto_5d
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lco/vine/android/api/VineVenue;->categoryIconUrl:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lco/vine/android/api/VineVenue;->categoryName:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lco/vine/android/api/VineVenue;->categoryId:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lco/vine/android/api/VineVenue;->city:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lco/vine/android/api/VineVenue;->countryCode:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lco/vine/android/api/VineVenue;->venueName:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lco/vine/android/api/VineVenue;->state:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lco/vine/android/api/VineVenue;->address:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineVenue;->displayType:I

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lco/vine/android/api/VineVenue;->categoryIconUrl:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lco/vine/android/api/VineVenue;->categoryName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lco/vine/android/api/VineVenue;->categoryId:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lco/vine/android/api/VineVenue;->city:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lco/vine/android/api/VineVenue;->countryCode:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lco/vine/android/api/VineVenue;->venueName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lco/vine/android/api/VineVenue;->state:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lco/vine/android/api/VineVenue;->address:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget v0, p0, Lco/vine/android/api/VineVenue;->displayType:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    return-void
.end method
