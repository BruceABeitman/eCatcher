.class final Lcom/bbm/ui/bu;
.super Ljava/lang/Object;
.source "EmoticonStickerPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/bbm/d/gj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/ui/bt;


# direct methods
.method constructor <init>(Lcom/bbm/ui/bt;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/bu;->a:Lcom/bbm/ui/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7

    check-cast p1, Lcom/bbm/d/gj;

    check-cast p2, Lcom/bbm/d/gj;

    iget-wide v0, p2, Lcom/bbm/d/gj;->f:J

    iget-wide v2, p1, Lcom/bbm/d/gj;->f:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/bbm/util/fb;->a(J)I

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p2, Lcom/bbm/d/gj;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/bbm/d/gj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_17
    return v0
.end method
