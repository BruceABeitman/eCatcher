.class public Lcom/instagram/common/u/f/b;
.super Ljava/lang/Object;
.source "LogoutHelper.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/instagram/common/u/f/b;

    sput-object v0, Lcom/instagram/common/u/f/b;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 1

    const-string v0, "LogoutManager.BROADCAST_POST_LOGOUT"

    invoke-static {v0}, Lcom/instagram/common/u/d;->a(Ljava/lang/String;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    sget-object v0, Lcom/instagram/common/u/f/b;->a:Ljava/lang/Class;

    invoke-static {p0}, Lcom/instagram/common/u/f/b;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/instagram/common/u/f/b;->a()V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Lcom/instagram/common/u/f/b;->c(Landroid/content/Context;)Lcom/instagram/common/u/f/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/instagram/common/u/f/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method private static c(Landroid/content/Context;)Lcom/instagram/common/u/f/a;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lcom/instagram/common/u/f/c;

    if-eqz v1, :cond_f

    check-cast v0, Lcom/instagram/common/u/f/c;

    invoke-interface {v0}, Lcom/instagram/common/u/f/c;->b()Lcom/instagram/common/u/f/a;

    move-result-object v0

    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your Application class needs to implement AppSpecificLogoutDelegate interface"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
