.class Lco/vine/android/util/UrlResourceCache$MemoryLruCache;
.super Landroid/support/v4/util/LruCache;
.source "UrlResourceCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/util/UrlResourceCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MemoryLruCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Lco/vine/android/util/UrlResource;",
        ">",
        "Landroid/support/v4/util/LruCache",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected sizeOf(Ljava/lang/Object;Lco/vine/android/util/UrlResource;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    invoke-virtual {p2}, Lco/vine/android/util/UrlResource;->size()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p2, Lco/vine/android/util/UrlResource;

    invoke-virtual {p0, p1, p2}, Lco/vine/android/util/UrlResourceCache$MemoryLruCache;->sizeOf(Ljava/lang/Object;Lco/vine/android/util/UrlResource;)I

    move-result v0

    return v0
.end method
