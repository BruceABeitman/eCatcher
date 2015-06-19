.class final Lcom/instagram/user/follow/j;
.super Lcom/instagram/api/j/a;
.source "FollowStatusUpdateRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/a",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/instagram/api/j/j;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/instagram/g/c;->a(Lcom/instagram/api/j/j;)V

    :cond_5
    return-void
.end method

.method protected final a(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method
