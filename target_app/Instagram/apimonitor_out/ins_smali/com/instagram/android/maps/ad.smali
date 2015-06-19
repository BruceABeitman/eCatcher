.class public final Lcom/instagram/android/maps/ad;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"
.field final synthetic a:Lcom/instagram/android/maps/PhotoMapsActivity;
.field private final b:I
.field private final c:I
.field private final d:Lcom/google/android/maps/GeoPoint;
.field private final e:I
.method public constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;IILcom/google/android/maps/GeoPoint;I)V
.registers 6
iput-object p1, p0, Lcom/instagram/android/maps/ad;->a:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p2, p0, Lcom/instagram/android/maps/ad;->b:I
iput p3, p0, Lcom/instagram/android/maps/ad;->c:I
iput-object p4, p0, Lcom/instagram/android/maps/ad;->d:Lcom/google/android/maps/GeoPoint;
iput p5, p0, Lcom/instagram/android/maps/ad;->e:I
return-void
.end method
.method public final a()I
.registers 2
iget v0, p0, Lcom/instagram/android/maps/ad;->e:I
return v0
.end method