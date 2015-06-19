.class public Lcom/instagram/e/a;
.super Ljava/lang/Object;
.source "ACRAInitializer.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/instagram/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/facebook/a/i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/instagram/e/a;

    sput-object v0, Lcom/instagram/e/a;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Application;)V
    .registers 4

    new-instance v1, Lcom/instagram/e/b;

    invoke-direct {v1, p0}, Lcom/instagram/e/b;-><init>(Landroid/app/Application;)V

    invoke-static {}, Lcom/instagram/d/a;->d()Lcom/instagram/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/d/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/instagram/common/o/a;->d()Z

    move-result v0

    if-nez v0, :cond_49

    const/4 v0, 0x1

    :goto_14
    invoke-static {v1, v2, v0}, Lcom/facebook/a/a;->a(Lcom/facebook/a/a/b;Ljava/lang/String;Z)Lcom/facebook/a/i;

    move-result-object v0

    sput-object v0, Lcom/instagram/e/a;->b:Lcom/facebook/a/i;

    const-string v1, "app"

    const-string v2, "instagram"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/a/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/instagram/e/a;->b:Lcom/facebook/a/i;

    const-string v1, "fb_app_id"

    invoke-static {}, Lcom/instagram/d/a;->d()Lcom/instagram/d/a;

    invoke-static {}, Lcom/instagram/d/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/a/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :try_start_2f
    sget-object v0, Lcom/instagram/e/a;->b:Lcom/facebook/a/i;

    const-string v1, "ig_device_id"

    invoke-static {p0}, Lcom/instagram/common/v/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/a/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3a
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_3a} :catch_4b

    :goto_3a
    invoke-static {}, Lcom/instagram/common/o/a;->d()Z

    move-result v0

    if-nez v0, :cond_45

    sget-object v0, Lcom/instagram/e/a;->b:Lcom/facebook/a/i;

    invoke-virtual {v0}, Lcom/facebook/a/i;->c()V

    :cond_45
    invoke-static {}, Lcom/facebook/d/b/b;->a()V

    return-void

    :cond_49
    const/4 v0, 0x0

    goto :goto_14

    :catch_4b
    move-exception v0

    sget-object v0, Lcom/instagram/e/a;->a:Ljava/lang/Class;

    goto :goto_3a
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/instagram/e/a;->b:Lcom/facebook/a/i;

    invoke-virtual {v0, p0}, Lcom/facebook/a/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/instagram/e/a;->b:Lcom/facebook/a/i;

    const-string v1, "ig_uid"

    invoke-virtual {v0, v1, p0}, Lcom/facebook/a/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
