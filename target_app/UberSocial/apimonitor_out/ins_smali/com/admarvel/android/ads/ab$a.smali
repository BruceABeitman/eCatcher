.class  Lcom/admarvel/android/ads/ab$a;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/admarvel/android/ads/ab$1;)V
.registers 2
invoke-direct {p0}, Lcom/admarvel/android/ads/ab$a;-><init>()V
return-void
.end method
.method public run()V
.registers 5
new-instance v1, Lcom/admarvel/android/ads/h;
invoke-direct {v1}, Lcom/admarvel/android/ads/h;-><init>()V
const/4 v0, 0x1
new-array v2, v0, [Ljava/lang/Object;
const/4 v3, 0x0
const/4 v0, 0x0
check-cast v0, Ljava/lang/Object;
aput-object v0, v2, v3
invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
return-void
.end method