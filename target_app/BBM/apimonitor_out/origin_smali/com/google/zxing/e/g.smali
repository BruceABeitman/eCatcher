.class final Lcom/google/zxing/e/g;
.super Ljava/lang/Object;
.source "EANManufacturerOrgSupport.java"


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/e/g;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/e/g;->b:Ljava/util/List;

    return-void
.end method

.method private a([ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/zxing/e/g;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/zxing/e/g;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method final declared-synchronized a()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/zxing/e/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_53b

    move-result v0

    if-nez v0, :cond_b

    :goto_9
    monitor-exit p0

    return-void

    :cond_b
    const/4 v0, 0x2

    :try_start_c
    new-array v0, v0, [I

    fill-array-data v0, :array_53e

    const-string v1, "US/CA"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_546

    const-string v1, "US"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_54e

    const-string v1, "US/CA"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_556

    const-string v1, "FR"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x17c

    aput v2, v0, v1

    const-string v1, "BG"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x17f

    aput v2, v0, v1

    const-string v1, "SI"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x181

    aput v2, v0, v1

    const-string v1, "HR"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x183

    aput v2, v0, v1

    const-string v1, "BA"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_55e

    const-string v1, "DE"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_566

    const-string v1, "JP"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_56e

    const-string v1, "RU"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1d7

    aput v2, v0, v1

    const-string v1, "TW"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1da

    aput v2, v0, v1

    const-string v1, "EE"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1db

    aput v2, v0, v1

    const-string v1, "LV"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1dc

    aput v2, v0, v1

    const-string v1, "AZ"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1dd

    aput v2, v0, v1

    const-string v1, "LT"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1de

    aput v2, v0, v1

    const-string v1, "UZ"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1df

    aput v2, v0, v1

    const-string v1, "LK"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1e0

    aput v2, v0, v1

    const-string v1, "PH"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1e1

    aput v2, v0, v1

    const-string v1, "BY"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1e2

    aput v2, v0, v1

    const-string v1, "UA"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1e4

    aput v2, v0, v1

    const-string v1, "MD"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1e5

    aput v2, v0, v1

    const-string v1, "AM"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1e6

    aput v2, v0, v1

    const-string v1, "GE"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1e7

    aput v2, v0, v1

    const-string v1, "KZ"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1e9

    aput v2, v0, v1

    const-string v1, "HK"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_576

    const-string v1, "JP"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_57e

    const-string v1, "GB"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x208

    aput v2, v0, v1

    const-string v1, "GR"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x210

    aput v2, v0, v1

    const-string v1, "LB"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x211

    aput v2, v0, v1

    const-string v1, "CY"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x213

    aput v2, v0, v1

    const-string v1, "MK"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x217

    aput v2, v0, v1

    const-string v1, "MT"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x21b

    aput v2, v0, v1

    const-string v1, "IE"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_586

    const-string v1, "BE/LU"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x230

    aput v2, v0, v1

    const-string v1, "PT"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x239

    aput v2, v0, v1

    const-string v1, "IS"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_58e

    const-string v1, "DK"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x24e

    aput v2, v0, v1

    const-string v1, "PL"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x252

    aput v2, v0, v1

    const-string v1, "RO"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x257

    aput v2, v0, v1

    const-string v1, "HU"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_596

    const-string v1, "ZA"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x25b

    aput v2, v0, v1

    const-string v1, "GH"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x260

    aput v2, v0, v1

    const-string v1, "BH"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x261

    aput v2, v0, v1

    const-string v1, "MU"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x263

    aput v2, v0, v1

    const-string v1, "MA"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x265

    aput v2, v0, v1

    const-string v1, "DZ"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x268

    aput v2, v0, v1

    const-string v1, "KE"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x26a

    aput v2, v0, v1

    const-string v1, "CI"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x26b

    aput v2, v0, v1

    const-string v1, "TN"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x26d

    aput v2, v0, v1

    const-string v1, "SY"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x26e

    aput v2, v0, v1

    const-string v1, "EG"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x270

    aput v2, v0, v1

    const-string v1, "LY"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x271

    aput v2, v0, v1

    const-string v1, "JO"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x272

    aput v2, v0, v1

    const-string v1, "IR"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x273

    aput v2, v0, v1

    const-string v1, "KW"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x274

    aput v2, v0, v1

    const-string v1, "SA"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x275

    aput v2, v0, v1

    const-string v1, "AE"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_59e

    const-string v1, "FI"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_5a6

    const-string v1, "CN"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_5ae

    const-string v1, "NO"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2d9

    aput v2, v0, v1

    const-string v1, "IL"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_5b6

    const-string v1, "SE"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2e4

    aput v2, v0, v1

    const-string v1, "GT"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2e5

    aput v2, v0, v1

    const-string v1, "SV"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2e6

    aput v2, v0, v1

    const-string v1, "HN"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2e7

    aput v2, v0, v1

    const-string v1, "NI"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2e8

    aput v2, v0, v1

    const-string v1, "CR"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2e9

    aput v2, v0, v1

    const-string v1, "PA"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2ea

    aput v2, v0, v1

    const-string v1, "DO"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2ee

    aput v2, v0, v1

    const-string v1, "MX"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_5be

    const-string v1, "CA"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2f7

    aput v2, v0, v1

    const-string v1, "VE"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_5c6

    const-string v1, "CH"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x302

    aput v2, v0, v1

    const-string v1, "CO"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x305

    aput v2, v0, v1

    const-string v1, "UY"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x307

    aput v2, v0, v1

    const-string v1, "PE"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x309

    aput v2, v0, v1

    const-string v1, "BO"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x30b

    aput v2, v0, v1

    const-string v1, "AR"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x30c

    aput v2, v0, v1

    const-string v1, "CL"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x310

    aput v2, v0, v1

    const-string v1, "PY"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x311

    aput v2, v0, v1

    const-string v1, "PE"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x312

    aput v2, v0, v1

    const-string v1, "EC"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_5ce

    const-string v1, "BR"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_5d6

    const-string v1, "IT"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_5de

    const-string v1, "ES"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x352

    aput v2, v0, v1

    const-string v1, "CU"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x35a

    aput v2, v0, v1

    const-string v1, "SK"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x35b

    aput v2, v0, v1

    const-string v1, "CZ"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x35c

    aput v2, v0, v1

    const-string v1, "YU"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x361

    aput v2, v0, v1

    const-string v1, "MN"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x363

    aput v2, v0, v1

    const-string v1, "KP"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_5e6

    const-string v1, "TR"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_5ee

    const-string v1, "NL"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x370

    aput v2, v0, v1

    const-string v1, "KR"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x375

    aput v2, v0, v1

    const-string v1, "TH"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x378

    aput v2, v0, v1

    const-string v1, "SG"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x37a

    aput v2, v0, v1

    const-string v1, "IN"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x37d

    aput v2, v0, v1

    const-string v1, "VN"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x380

    aput v2, v0, v1

    const-string v1, "PK"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x383

    aput v2, v0, v1

    const-string v1, "ID"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_5f6

    const-string v1, "AT"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_5fe

    const-string v1, "AU"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_606

    const-string v1, "AZ"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3bb

    aput v2, v0, v1

    const-string v1, "MY"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3be

    aput v2, v0, v1

    const-string v1, "MO"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/g;->a([ILjava/lang/String;)V
    :try_end_539
    .catchall {:try_start_c .. :try_end_539} :catchall_53b

    goto/16 :goto_9

    :catchall_53b
    move-exception v0

    monitor-exit p0

    throw v0

    :array_53e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
    .end array-data

    :array_546
    .array-data 0x4
        0x1et 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    :array_54e
    .array-data 0x4
        0x3ct 0x0t 0x0t 0x0t
        0x8bt 0x0t 0x0t 0x0t
    .end array-data

    :array_556
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x7bt 0x1t 0x0t 0x0t
    .end array-data

    :array_55e
    .array-data 0x4
        0x90t 0x1t 0x0t 0x0t
        0xb8t 0x1t 0x0t 0x0t
    .end array-data

    :array_566
    .array-data 0x4
        0xc2t 0x1t 0x0t 0x0t
        0xcbt 0x1t 0x0t 0x0t
    .end array-data

    :array_56e
    .array-data 0x4
        0xcct 0x1t 0x0t 0x0t
        0xd5t 0x1t 0x0t 0x0t
    .end array-data

    :array_576
    .array-data 0x4
        0xeat 0x1t 0x0t 0x0t
        0xf3t 0x1t 0x0t 0x0t
    .end array-data

    :array_57e
    .array-data 0x4
        0xf4t 0x1t 0x0t 0x0t
        0xfdt 0x1t 0x0t 0x0t
    .end array-data

    :array_586
    .array-data 0x4
        0x1ct 0x2t 0x0t 0x0t
        0x25t 0x2t 0x0t 0x0t
    .end array-data

    :array_58e
    .array-data 0x4
        0x3at 0x2t 0x0t 0x0t
        0x43t 0x2t 0x0t 0x0t
    .end array-data

    :array_596
    .array-data 0x4
        0x58t 0x2t 0x0t 0x0t
        0x59t 0x2t 0x0t 0x0t
    .end array-data

    :array_59e
    .array-data 0x4
        0x80t 0x2t 0x0t 0x0t
        0x89t 0x2t 0x0t 0x0t
    .end array-data

    :array_5a6
    .array-data 0x4
        0xb2t 0x2t 0x0t 0x0t
        0xb7t 0x2t 0x0t 0x0t
    .end array-data

    :array_5ae
    .array-data 0x4
        0xbct 0x2t 0x0t 0x0t
        0xc5t 0x2t 0x0t 0x0t
    .end array-data

    :array_5b6
    .array-data 0x4
        0xdat 0x2t 0x0t 0x0t
        0xe3t 0x2t 0x0t 0x0t
    .end array-data

    :array_5be
    .array-data 0x4
        0xf2t 0x2t 0x0t 0x0t
        0xf3t 0x2t 0x0t 0x0t
    .end array-data

    :array_5c6
    .array-data 0x4
        0xf8t 0x2t 0x0t 0x0t
        0x1t 0x3t 0x0t 0x0t
    .end array-data

    :array_5ce
    .array-data 0x4
        0x15t 0x3t 0x0t 0x0t
        0x16t 0x3t 0x0t 0x0t
    .end array-data

    :array_5d6
    .array-data 0x4
        0x20t 0x3t 0x0t 0x0t
        0x47t 0x3t 0x0t 0x0t
    .end array-data

    :array_5de
    .array-data 0x4
        0x48t 0x3t 0x0t 0x0t
        0x51t 0x3t 0x0t 0x0t
    .end array-data

    :array_5e6
    .array-data 0x4
        0x64t 0x3t 0x0t 0x0t
        0x65t 0x3t 0x0t 0x0t
    .end array-data

    :array_5ee
    .array-data 0x4
        0x66t 0x3t 0x0t 0x0t
        0x6ft 0x3t 0x0t 0x0t
    .end array-data

    :array_5f6
    .array-data 0x4
        0x84t 0x3t 0x0t 0x0t
        0x97t 0x3t 0x0t 0x0t
    .end array-data

    :array_5fe
    .array-data 0x4
        0xa2t 0x3t 0x0t 0x0t
        0xabt 0x3t 0x0t 0x0t
    .end array-data

    :array_606
    .array-data 0x4
        0xact 0x3t 0x0t 0x0t
        0xb5t 0x3t 0x0t 0x0t
    .end array-data
.end method
