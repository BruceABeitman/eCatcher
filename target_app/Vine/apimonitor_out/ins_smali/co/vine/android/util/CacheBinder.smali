.class public Lco/vine/android/util/CacheBinder;
.super Landroid/os/Binder;
.source "CacheBinder.java"
.field public final cache:Landroid/support/v4/util/LruCache;
.method public constructor <init>(Landroid/support/v4/util/LruCache;)V
.registers 2
invoke-direct {p0}, Landroid/os/Binder;-><init>()V
iput-object p1, p0, Lco/vine/android/util/CacheBinder;->cache:Landroid/support/v4/util/LruCache;
return-void
.end method