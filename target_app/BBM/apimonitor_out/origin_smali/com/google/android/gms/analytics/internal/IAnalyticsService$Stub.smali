.class public abstract Lcom/google/android/gms/analytics/internal/IAnalyticsService$Stub;
.super Landroid/os/Binder;
.source "IAnalyticsService.java"

# interfaces
.implements Lcom/google/android/gms/analytics/internal/IAnalyticsService;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.gms.analytics.internal.IAnalyticsService"

.field static final TRANSACTION_clearHits:I = 0x2

.field static final TRANSACTION_sendHit:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.gms.analytics.internal.IAnalyticsService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/analytics/internal/IAnalyticsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/analytics/internal/IAnalyticsService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.analytics.internal.IAnalyticsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/analytics/internal/IAnalyticsService;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/analytics/internal/IAnalyticsService;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/analytics/internal/IAnalyticsService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/internal/IAnalyticsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_46

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    :sswitch_9
    const-string v0, "com.google.android.gms.analytics.internal.IAnalyticsService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v6

    goto :goto_8

    :sswitch_10
    const-string v0, "com.google.android.gms.analytics.internal.IAnalyticsService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/google/android/gms/analytics/internal/Command;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/analytics/internal/IAnalyticsService$Stub;->sendHit(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto :goto_8

    :sswitch_38
    const-string v0, "com.google.android.gms.analytics.internal.IAnalyticsService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/IAnalyticsService$Stub;->clearHits()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto :goto_8

    nop

    :sswitch_data_46
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_38
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
