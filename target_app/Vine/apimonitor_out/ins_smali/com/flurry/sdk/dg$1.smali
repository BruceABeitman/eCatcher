.class  Lcom/flurry/sdk/dg$1;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"
.field final synthetic a:Lcom/flurry/sdk/dg;
.method constructor <init>(Lcom/flurry/sdk/dg;)V
.registers 2
iput-object p1, p0, Lcom/flurry/sdk/dg$1;->a:Lcom/flurry/sdk/dg;
invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V
return-void
.end method
.method public a()V
.registers 3
iget-object v0, p0, Lcom/flurry/sdk/dg$1;->a:Lcom/flurry/sdk/dg;
invoke-static {}, Lcom/flurry/sdk/dt;->a()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
move-result-object v1
invoke-static {v0, v1}, Lcom/flurry/sdk/dg;->a(Lcom/flurry/sdk/dg;Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
return-void
.end method