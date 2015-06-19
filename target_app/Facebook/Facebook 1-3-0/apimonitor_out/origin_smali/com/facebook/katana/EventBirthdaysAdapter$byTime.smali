.class public Lcom/facebook/katana/EventBirthdaysAdapter$byTime;
.super Ljava/lang/Object;
.source "EventBirthdaysAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/EventBirthdaysAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "byTime"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/katana/EventBirthdaysAdapter$Item;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/EventBirthdaysAdapter;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/EventBirthdaysAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/EventBirthdaysAdapter$byTime;->this$0:Lcom/facebook/katana/EventBirthdaysAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/facebook/katana/EventBirthdaysAdapter$Item;Lcom/facebook/katana/EventBirthdaysAdapter$Item;)I
    .registers 7

    invoke-virtual {p1}, Lcom/facebook/katana/EventBirthdaysAdapter$Item;->getStartingTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/facebook/katana/EventBirthdaysAdapter$Item;->getStartingTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/facebook/katana/EventBirthdaysAdapter$Item;

    check-cast p2, Lcom/facebook/katana/EventBirthdaysAdapter$Item;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/katana/EventBirthdaysAdapter$byTime;->compare(Lcom/facebook/katana/EventBirthdaysAdapter$Item;Lcom/facebook/katana/EventBirthdaysAdapter$Item;)I

    move-result v0

    return v0
.end method
