.class public interface abstract Lco/vine/android/api/VineComparatorFactory$VineComparator;
.super Ljava/lang/Object;
.source "VineComparatorFactory.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/api/VineComparatorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VineComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VinePost:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TVinePost;>;"
    }
.end annotation


# virtual methods
.method public abstract getOrderId(Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVinePost;)J"
        }
    .end annotation
.end method
