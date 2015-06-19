.class public Lcom/glympse/android/hal/NameValue$NameValueComparator;
.super Ljava/lang/Object;
.source "NameValue.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/glympse/android/hal/NameValue;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/glympse/android/hal/NameValue;Lcom/glympse/android/hal/NameValue;)I
    .registers 5

    iget-object v0, p1, Lcom/glympse/android/hal/NameValue;->_name:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/glympse/android/hal/NameValue;->_name:Ljava/lang/String;

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_13

    :goto_12
    return v0

    :cond_13
    iget-object v0, p1, Lcom/glympse/android/hal/NameValue;->_value:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/glympse/android/hal/NameValue;->_value:Ljava/lang/String;

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_12
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/glympse/android/hal/NameValue;

    check-cast p2, Lcom/glympse/android/hal/NameValue;

    invoke-virtual {p0, p1, p2}, Lcom/glympse/android/hal/NameValue$NameValueComparator;->compare(Lcom/glympse/android/hal/NameValue;Lcom/glympse/android/hal/NameValue;)I

    move-result v0

    return v0
.end method
