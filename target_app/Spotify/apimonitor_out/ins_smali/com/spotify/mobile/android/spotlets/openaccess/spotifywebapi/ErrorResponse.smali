.class public Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/ErrorResponse;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field private final mError:Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/a;
.method private constructor <init>(Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/a;)V
.registers 2
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/ErrorResponse;->mError:Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/a;
return-void
.end method
.method public getError()Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/a;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/ErrorResponse;->mError:Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/a;
return-object v0
.end method