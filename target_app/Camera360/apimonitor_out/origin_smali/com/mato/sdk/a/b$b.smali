.class public final Lcom/mato/sdk/a/b$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mato/sdk/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field private static a:I

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput v0, Lcom/mato/sdk/a/b$b;->a:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/mato/sdk/a/b$b;->b:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)V
    .registers 1

    sput p0, Lcom/mato/sdk/a/b$b;->a:I

    return-void
.end method

.method public static a(J)V
    .registers 2

    sput-wide p0, Lcom/mato/sdk/a/b$b;->b:J

    return-void
.end method

.method public static a()Z
    .registers 8

    const-wide/16 v0, 0x64

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    sget v4, Lcom/mato/sdk/a/b$b;->a:I

    if-eqz v4, :cond_10

    sget-wide v4, Lcom/mato/sdk/a/b$b;->b:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_12

    :cond_10
    move v0, v2

    :goto_11
    return v0

    :cond_12
    sget-wide v4, Lcom/mato/sdk/a/b$b;->b:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2c

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-wide v4, Lcom/mato/sdk/a/b$b;->b:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v6

    if-lez v0, :cond_2a

    move v0, v2

    goto :goto_11

    :cond_2a
    move v0, v3

    goto :goto_11

    :cond_2c
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    const-string/jumbo v5, "auth_time"

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Lcom/mato/sdk/utils/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_49

    :try_start_41
    invoke-static {v5}, Lcom/mato/sdk/utils/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_48} :catch_61

    move-result-wide v0

    :cond_49
    :goto_49
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v4, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    const v4, 0x15180

    sget v5, Lcom/mato/sdk/a/b$b;->a:I

    mul-int/2addr v4, v5

    int-to-long v4, v4

    cmp-long v0, v0, v4

    if-lez v0, :cond_5f

    move v0, v2

    goto :goto_11

    :cond_5f
    move v0, v3

    goto :goto_11

    :catch_61
    move-exception v5

    goto :goto_49
.end method

.method public static b(I)V
    .registers 3

    :try_start_0
    const-string/jumbo v0, "auth_result"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mato/sdk/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mato/sdk/utils/i;->b(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    goto :goto_e
.end method

.method public static b(J)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcom/mato/sdk/a/b$b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_1c
    const-string/jumbo v1, "auth_fail_time"

    invoke-static {v0}, Lcom/mato/sdk/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mato/sdk/utils/i;->b(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_26} :catch_27

    :goto_26
    return-void

    :catch_27
    move-exception v0

    goto :goto_26
.end method

.method public static b()Z
    .registers 2

    invoke-static {}, Lcom/mato/sdk/a/b$b;->j()I

    move-result v0

    sget-object v1, Lcom/mato/sdk/a/b$c;->a:Lcom/mato/sdk/a/b$c;

    invoke-virtual {v1}, Lcom/mato/sdk/a/b$c;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static c()Z
    .registers 2

    invoke-static {}, Lcom/mato/sdk/a/b$b;->j()I

    move-result v0

    sget-object v1, Lcom/mato/sdk/a/b$c;->c:Lcom/mato/sdk/a/b$c;

    invoke-virtual {v1}, Lcom/mato/sdk/a/b$c;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static d()V
    .registers 3

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :try_start_9
    const-string/jumbo v2, "auth_time"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mato/sdk/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mato/sdk/utils/i;->b(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_17} :catch_18

    :goto_17
    return-void

    :catch_18
    move-exception v0

    goto :goto_17
.end method

.method public static e()Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, ""

    const-string/jumbo v1, "auth_fail_time"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Lcom/mato/sdk/utils/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    :try_start_13
    invoke-static {v1}, Lcom/mato/sdk/utils/b;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_18

    move-result-object v0

    :cond_17
    :goto_17
    return-object v0

    :catch_18
    move-exception v1

    goto :goto_17
.end method

.method public static f()V
    .registers 2

    const-string/jumbo v0, "auth_fail_time"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/mato/sdk/utils/i;->b(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static g()Z
    .registers 1

    invoke-static {}, Lcom/mato/sdk/a/b$b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method private static h()I
    .registers 1

    sget v0, Lcom/mato/sdk/a/b$b;->a:I

    return v0
.end method

.method private static i()J
    .registers 2

    sget-wide v0, Lcom/mato/sdk/a/b$b;->b:J

    return-wide v0
.end method

.method private static j()I
    .registers 3

    const-string/jumbo v0, "auth_result"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/mato/sdk/utils/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    :try_start_11
    invoke-static {v1}, Lcom/mato/sdk/utils/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_18} :catch_1a

    move-result v0

    :cond_19
    :goto_19
    return v0

    :catch_1a
    move-exception v0

    const/4 v0, -0x1

    goto :goto_19
.end method

.method private static k()Z
    .registers 2

    invoke-static {}, Lcom/mato/sdk/a/b$b;->j()I

    move-result v0

    sget-object v1, Lcom/mato/sdk/a/b$c;->b:Lcom/mato/sdk/a/b$c;

    invoke-virtual {v1}, Lcom/mato/sdk/a/b$c;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
