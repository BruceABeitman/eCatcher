.class public final Lcom/google/android/gms/internal/ao;
.super Lcom/google/android/gms/internal/at$a;


# instance fields
.field private final mf:Lcom/google/android/gms/ads/doubleclick/AppEventListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/at$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ao;->mf:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    return-void
.end method


# virtual methods
.method public onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ao;->mf:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/ads/doubleclick/AppEventListener;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
