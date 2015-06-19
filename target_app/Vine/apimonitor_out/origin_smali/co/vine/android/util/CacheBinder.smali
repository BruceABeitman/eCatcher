.class public Lco/vine/android/util/CacheBinder;
.super Landroid/os/Binder;
.source "CacheBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/Binder;"
    }
.end annotation


# instance fields
.field public final cache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/util/LruCache;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/LruCache",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lco/vine/android/util/CacheBinder;->cache:Landroid/support/v4/util/LruCache;

    return-void
.end method
