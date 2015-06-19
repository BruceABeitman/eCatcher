.class final Lcom/instagram/notifications/c2dm/a;
.super Lcom/instagram/api/k/a/h;
.source "IgPushRegistrationService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/h",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/api/k/a/h;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/notifications/c2dm/a;-><init>()V

    return-void
.end method

.method private static b()V
    .registers 3

    invoke-static {}, Lcom/instagram/notifications/c2dm/IgPushRegistrationService;->a()Ljava/lang/Class;

    invoke-static {}, Lcom/instagram/k/a/b;->a()Lcom/instagram/k/a/b;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/k/a/b;->a(J)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/api/k/a/i;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/k/a/i",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/instagram/notifications/c2dm/IgPushRegistrationService;->a()Ljava/lang/Class;

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .registers 2

    invoke-static {}, Lcom/instagram/notifications/c2dm/a;->b()V

    return-void
.end method
