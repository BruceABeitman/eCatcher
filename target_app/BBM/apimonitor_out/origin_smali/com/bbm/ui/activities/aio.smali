.class final Lcom/bbm/ui/activities/aio;
.super Lcom/bbm/j/a;
.source "ViewChannelActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/j/a",
        "<",
        "Lcom/bbm/d/ec;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ail;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ail;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/aio;->a:Lcom/bbm/ui/activities/ail;

    invoke-direct {p0}, Lcom/bbm/j/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/aio;->a:Lcom/bbm/ui/activities/ail;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/ail;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;

    move-result-object v0

    return-object v0
.end method
