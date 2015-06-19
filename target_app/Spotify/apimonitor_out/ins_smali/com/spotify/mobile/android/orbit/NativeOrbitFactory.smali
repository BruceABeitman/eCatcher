.class public Lcom/spotify/mobile/android/orbit/NativeOrbitFactory;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/orbit/OrbitFactory;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public createService(Landroid/app/Service;ILjava/lang/String;)Lcom/spotify/mobile/android/orbit/OrbitService;
.registers 5
invoke-static {p1, p2, p3}, Lcom/spotify/mobile/android/orbit/OrbitService;->create(Landroid/app/Service;ILjava/lang/String;)Lcom/spotify/mobile/android/orbit/OrbitService;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic createService(Landroid/app/Service;ILjava/lang/String;)Lcom/spotify/mobile/android/orbit/OrbitServiceInterface;
.registers 5
invoke-virtual {p0, p1, p2, p3}, Lcom/spotify/mobile/android/orbit/NativeOrbitFactory;->createService(Landroid/app/Service;ILjava/lang/String;)Lcom/spotify/mobile/android/orbit/OrbitService;
move-result-object v0
return-object v0
.end method
.method public getConnectivityListener()Lcom/spotify/mobile/android/core/internal/ConnectivityListener;
.registers 2
invoke-static {}, Lcom/spotify/mobile/android/core/internal/ConnectivityListener;->getInstance()Lcom/spotify/mobile/android/core/internal/ConnectivityListener;
move-result-object v0
return-object v0
.end method