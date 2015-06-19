.class  Lco/vine/android/util/UrlResourceCache$MemoryLruCache;
.super Landroid/support/v4/util/LruCache;
.source "UrlResourceCache.java"
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0, p1}, Landroid/support/v4/util/LruCache;-><init>(I)V
return-void
.end method
.method protected sizeOf(Ljava/lang/Object;Lco/vine/android/util/UrlResource;)I
.registers 4
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