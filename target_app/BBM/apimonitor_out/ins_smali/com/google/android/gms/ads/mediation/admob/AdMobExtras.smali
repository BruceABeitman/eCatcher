.class public final Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;
.super Ljava/lang/Object;
.implements Lcom/google/a/a/h;
.field private final qs:Landroid/os/Bundle;
.method public constructor <init>(Landroid/os/Bundle;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-eqz p1, :cond_d
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
:goto_a
iput-object v0, p0, Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;->qs:Landroid/os/Bundle;
return-void
:cond_d
const/4 v0, 0x0
goto :goto_a
.end method
.method public final getExtras()Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;->qs:Landroid/os/Bundle;
return-object v0
.end method