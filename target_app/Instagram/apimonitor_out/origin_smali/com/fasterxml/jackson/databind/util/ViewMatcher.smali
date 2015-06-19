.class public abstract Lcom/fasterxml/jackson/databind/util/ViewMatcher;
.super Ljava/lang/Object;
.source "ViewMatcher.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static construct([Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/ViewMatcher;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/util/ViewMatcher;"
        }
    .end annotation

    if-nez p0, :cond_5

    sget-object v0, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Empty;->instance:Lcom/fasterxml/jackson/databind/util/ViewMatcher$Empty;

    :goto_4
    return-object v0

    :cond_5
    array-length v0, p0

    packed-switch v0, :pswitch_data_1c

    new-instance v0, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Multi;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Multi;-><init>([Ljava/lang/Class;)V

    goto :goto_4

    :pswitch_f
    sget-object v0, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Empty;->instance:Lcom/fasterxml/jackson/databind/util/ViewMatcher$Empty;

    goto :goto_4

    :pswitch_12
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Single;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Single;-><init>(Ljava/lang/Class;)V

    goto :goto_4

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method public abstract isVisibleForView(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation
.end method
