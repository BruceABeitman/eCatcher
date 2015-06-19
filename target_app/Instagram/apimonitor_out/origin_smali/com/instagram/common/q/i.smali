.class public interface abstract Lcom/instagram/common/q/i;
.super Ljava/lang/Object;
.source "NotificationDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/util/List;)Landroid/app/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TDataType;>;)",
            "Landroid/app/Notification;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/util/Map;Ljava/lang/String;)Landroid/app/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TDataType;>;>;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/Notification;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TDataType;"
        }
    .end annotation
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataType;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract a(I)Z
.end method

.method public abstract b()Landroid/content/SharedPreferences;
.end method
