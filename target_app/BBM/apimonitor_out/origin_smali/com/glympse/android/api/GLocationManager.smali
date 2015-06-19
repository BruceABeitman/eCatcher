.class public interface abstract Lcom/glympse/android/api/GLocationManager;
.super Ljava/lang/Object;
.source "GLocationManager.java"

# interfaces
.implements Lcom/glympse/android/api/GEventSink;


# virtual methods
.method public abstract areProfilesEnabled()Z
.end method

.method public abstract enableFiltering(Z)V
.end method

.method public abstract enableProfiles(Z)V
.end method

.method public abstract getCurrentProfile()Lcom/glympse/android/core/GLocationProfile;
.end method

.method public abstract getLocation()Lcom/glympse/android/core/GLocation;
.end method

.method public abstract getLocationState()I
.end method

.method public abstract getProfile(I)Lcom/glympse/android/core/GLocationProfile;
.end method

.method public abstract handleGeofence(Ljava/lang/String;I)V
.end method

.method public abstract isFilteringEnabled()Z
.end method

.method public abstract setLocationProvider(Lcom/glympse/android/core/GLocationProvider;)V
.end method

.method public abstract setProximityProvider(Lcom/glympse/android/core/GProximityProvider;)V
.end method

.method public abstract startLocation()I
.end method

.method public abstract stopLocation(Z)I
.end method

.method public abstract updateProfile(Lcom/glympse/android/core/GLocationProfile;)Z
.end method
