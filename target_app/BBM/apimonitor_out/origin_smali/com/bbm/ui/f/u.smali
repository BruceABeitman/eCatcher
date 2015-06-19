.class final Lcom/bbm/ui/f/u;
.super Ljava/lang/Object;
.source "MessageNotificationItem.java"

# interfaces
.implements Lcom/bbm/ui/f/f;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/bbm/ui/f/u;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/af;->k()Z

    move-result v0

    return v0
.end method
