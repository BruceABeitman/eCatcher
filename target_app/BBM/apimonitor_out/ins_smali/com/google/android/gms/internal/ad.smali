.class public final Lcom/google/android/gms/internal/ad;
.super Lcom/google/android/gms/internal/ai$a;
.field private final lq:Lcom/google/android/gms/ads/doubleclick/AppEventListener;
.method public constructor <init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/internal/ai$a;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/ad;->lq:Lcom/google/android/gms/ads/doubleclick/AppEventListener;
return-void
.end method
.method public final onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/ad;->lq:Lcom/google/android/gms/ads/doubleclick/AppEventListener;
invoke-interface {v0, p1, p2}, Lcom/google/android/gms/ads/doubleclick/AppEventListener;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method