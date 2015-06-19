.class Lcom/twidroid/fragments/e/g$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/e/g;->ac()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/e/g;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/e/g;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/e/g$3;->a:Lcom/twidroid/fragments/e/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twidroid/model/twitter/DirectMessage;Lcom/twidroid/model/twitter/DirectMessage;)I
    .registers 7

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/DirectMessage;->l()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/twidroid/model/twitter/DirectMessage;->l()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    invoke-virtual {p1}, Lcom/twidroid/model/twitter/DirectMessage;->l()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/twidroid/model/twitter/DirectMessage;->l()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    goto :goto_d

    :cond_1c
    const/4 v0, -0x1

    goto :goto_d
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/twidroid/model/twitter/DirectMessage;

    check-cast p2, Lcom/twidroid/model/twitter/DirectMessage;

    invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/e/g$3;->a(Lcom/twidroid/model/twitter/DirectMessage;Lcom/twidroid/model/twitter/DirectMessage;)I

    move-result v0

    return v0
.end method
