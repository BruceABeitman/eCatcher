.class Lcom/facebook/katana/binding/StreamPhotosCache$1;
.super Ljava/lang/Object;
.source "StreamPhotosCache.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/binding/StreamPhotosCache;->makeRoom(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/katana/binding/StreamPhoto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/binding/StreamPhotosCache;


# direct methods
.method constructor <init>(Lcom/facebook/katana/binding/StreamPhotosCache;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/binding/StreamPhotosCache$1;->this$0:Lcom/facebook/katana/binding/StreamPhotosCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/facebook/katana/binding/StreamPhoto;Lcom/facebook/katana/binding/StreamPhoto;)I
    .registers 5

    invoke-virtual {p1}, Lcom/facebook/katana/binding/StreamPhoto;->getUsageCount()I

    move-result v0

    invoke-virtual {p2}, Lcom/facebook/katana/binding/StreamPhoto;->getUsageCount()I

    move-result v1

    if-le v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    invoke-virtual {p1}, Lcom/facebook/katana/binding/StreamPhoto;->getUsageCount()I

    move-result v0

    invoke-virtual {p2}, Lcom/facebook/katana/binding/StreamPhoto;->getUsageCount()I

    move-result v1

    if-ne v0, v1, :cond_18

    const/4 v0, 0x0

    goto :goto_b

    :cond_18
    const/4 v0, -0x1

    goto :goto_b
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/facebook/katana/binding/StreamPhoto;

    check-cast p2, Lcom/facebook/katana/binding/StreamPhoto;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/katana/binding/StreamPhotosCache$1;->compare(Lcom/facebook/katana/binding/StreamPhoto;Lcom/facebook/katana/binding/StreamPhoto;)I

    move-result v0

    return v0
.end method
