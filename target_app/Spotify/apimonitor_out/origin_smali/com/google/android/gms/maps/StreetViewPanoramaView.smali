.class public Lcom/google/android/gms/maps/StreetViewPanoramaView;
.super Landroid/widget/FrameLayout;


# instance fields
.field private final a:Lcom/google/android/gms/maps/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/google/android/gms/maps/d;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/maps/d;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->a:Lcom/google/android/gms/maps/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/google/android/gms/maps/d;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/maps/d;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->a:Lcom/google/android/gms/maps/d;

    return-void
.end method
