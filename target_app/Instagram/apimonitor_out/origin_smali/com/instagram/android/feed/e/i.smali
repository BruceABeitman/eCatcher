.class final Lcom/instagram/android/feed/e/i;
.super Lcom/instagram/api/j/a;
.source "LikeUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/a",
        "<",
        "Ljava/lang/Void;",
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
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/instagram/g/c;->a(Lcom/instagram/api/j/j;)V

    :cond_5
    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method
