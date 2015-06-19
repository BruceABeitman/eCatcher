.class final Lcom/bbm/ui/activities/iv;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/bbm/d/fl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/iu;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/iu;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/iv;->a:Lcom/bbm/ui/activities/iu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    check-cast p1, Lcom/bbm/d/fl;

    check-cast p2, Lcom/bbm/d/fl;

    iget-object v0, p2, Lcom/bbm/d/fl;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/bbm/d/fl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
