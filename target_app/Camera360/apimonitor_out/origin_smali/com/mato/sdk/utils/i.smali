.class public final Lcom/mato/sdk/utils/i;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String; = "matosdk_preference"

.field private static b:Landroid/content/SharedPreferences;

.field private static c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/mato/sdk/utils/i;->b:Landroid/content/SharedPreferences;

    sput-object v0, Lcom/mato/sdk/utils/i;->c:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;I)I
    .registers 3

    invoke-static {}, Lcom/mato/sdk/utils/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;J)J
    .registers 5

    invoke-static {}, Lcom/mato/sdk/utils/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a()Landroid/content/SharedPreferences;
    .registers 3

    sget-object v0, Lcom/mato/sdk/utils/i;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_10

    sget-object v0, Lcom/mato/sdk/utils/i;->c:Landroid/content/Context;

    const-string/jumbo v1, "matosdk_preference"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/mato/sdk/utils/i;->b:Landroid/content/SharedPreferences;

    :cond_10
    sget-object v0, Lcom/mato/sdk/utils/i;->b:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/mato/sdk/utils/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 1

    sput-object p0, Lcom/mato/sdk/utils/i;->c:Landroid/content/Context;

    return-void
.end method

.method private static a(Ljava/lang/String;Z)Z
    .registers 3

    invoke-static {}, Lcom/mato/sdk/utils/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;I)Z
    .registers 3

    invoke-static {}, Lcom/mato/sdk/utils/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;J)Z
    .registers 4

    invoke-static {}, Lcom/mato/sdk/utils/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-static {}, Lcom/mato/sdk/utils/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;Z)Z
    .registers 3

    invoke-static {}, Lcom/mato/sdk/utils/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method
