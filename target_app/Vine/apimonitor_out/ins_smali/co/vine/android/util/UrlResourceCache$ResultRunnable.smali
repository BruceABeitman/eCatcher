.class  Lco/vine/android/util/UrlResourceCache$ResultRunnable;
.super Ljava/lang/Object;
.source "UrlResourceCache.java"
.implements Ljava/lang/Runnable;
.field private final mResult:Ljava/util/HashMap;
.field final synthetic this$0:Lco/vine/android/util/UrlResourceCache;
.method public constructor <init>(Lco/vine/android/util/UrlResourceCache;Ljava/util/HashMap;)V
.registers 3
iput-object p1, p0, Lco/vine/android/util/UrlResourceCache$ResultRunnable;->this$0:Lco/vine/android/util/UrlResourceCache;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lco/vine/android/util/UrlResourceCache$ResultRunnable;->mResult:Ljava/util/HashMap;
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lco/vine/android/util/UrlResourceCache$ResultRunnable;->this$0:Lco/vine/android/util/UrlResourceCache;
iget-object v1, p0, Lco/vine/android/util/UrlResourceCache$ResultRunnable;->mResult:Ljava/util/HashMap;
invoke-virtual {v0, v1}, Lco/vine/android/util/UrlResourceCache;->urlResourceLoaded(Ljava/util/HashMap;)V
return-void
.end method