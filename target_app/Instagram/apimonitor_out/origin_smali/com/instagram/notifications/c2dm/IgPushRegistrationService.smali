.class public Lcom/instagram/notifications/c2dm/IgPushRegistrationService;
.super Landroid/app/IntentService;
.source "IgPushRegistrationService.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/instagram/common/a/a/m;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/instagram/notifications/c2dm/IgPushRegistrationService;

    sput-object v0, Lcom/instagram/notifications/c2dm/IgPushRegistrationService;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const-class v0, Lcom/instagram/notifications/c2dm/IgPushRegistrationService;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/instagram/common/a/a/h;

    invoke-direct {v0}, Lcom/instagram/common/a/a/h;-><init>()V

    iput-object v0, p0, Lcom/instagram/notifications/c2dm/IgPushRegistrationService;->b:Lcom/instagram/common/a/a/m;

    return-void
.end method

.method static synthetic a()Ljava/lang/Class;
    .registers 1

    sget-object v0, Lcom/instagram/notifications/c2dm/IgPushRegistrationService;->a:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PushRegistrationService.DEVICE_TOKEN"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "PushRegistrationService.PUSH_DEVICE_TYPE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/q/b/g;

    new-instance v2, Lcom/instagram/notifications/c2dm/b;

    invoke-direct {v2, v1, v0, v3}, Lcom/instagram/notifications/c2dm/b;-><init>(Ljava/lang/String;Lcom/instagram/common/q/b/g;B)V

    new-instance v0, Lcom/instagram/notifications/c2dm/a;

    invoke-direct {v0, v3}, Lcom/instagram/notifications/c2dm/a;-><init>(B)V

    invoke-virtual {v2, v0}, Lcom/instagram/notifications/c2dm/b;->a(Lcom/instagram/common/a/a/l;)Lcom/instagram/common/a/a/a;

    iget-object v0, p0, Lcom/instagram/notifications/c2dm/IgPushRegistrationService;->b:Lcom/instagram/common/a/a/m;

    invoke-interface {v0, v2}, Lcom/instagram/common/a/a/m;->a(Lcom/instagram/common/a/a/a;)V

    return-void
.end method
