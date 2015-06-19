.class final Lcom/fasterxml/jackson/databind/util/ViewMatcher$Multi;
.super Lcom/fasterxml/jackson/databind/util/ViewMatcher;
.source "ViewMatcher.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/util/ViewMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Multi"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _views:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/util/ViewMatcher;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Multi;->_views:[Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public isVisibleForView(Ljava/lang/Class;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Multi;->_views:[Ljava/lang/Class;

    array-length v2, v1

    move v1, v0

    :goto_5
    if-ge v1, v2, :cond_14

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Multi;->_views:[Ljava/lang/Class;

    aget-object v3, v3, v1

    if-eq p1, v3, :cond_13

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_13
    const/4 v0, 0x1

    :cond_14
    return v0

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method
