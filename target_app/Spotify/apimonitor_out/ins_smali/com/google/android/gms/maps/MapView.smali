.class public Lcom/google/android/gms/maps/MapView;
.super Landroid/widget/FrameLayout;
.field private final a:Lcom/google/android/gms/maps/b;
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 5
invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Lcom/google/android/gms/maps/b;
invoke-static {p1, p2}, Lcom/google/android/gms/maps/GoogleMapOptions;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/GoogleMapOptions;
move-result-object v1
invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/maps/b;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V
iput-object v0, p0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/b;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 6
invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v0, Lcom/google/android/gms/maps/b;
invoke-static {p1, p2}, Lcom/google/android/gms/maps/GoogleMapOptions;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/GoogleMapOptions;
move-result-object v1
invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/maps/b;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V
iput-object v0, p0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/b;
return-void
.end method