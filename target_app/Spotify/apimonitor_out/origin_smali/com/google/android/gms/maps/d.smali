.class final Lcom/google/android/gms/maps/d;
.super Lcom/google/android/gms/dynamic/a;


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/dynamic/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/maps/d;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/google/android/gms/maps/d;->b:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/maps/d;->c:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    return-void
.end method
