.class public Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/ClientCredentialsResponse;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field private final mAccessToken:Ljava/lang/String;
.field private final mExpiresIn:Ljava/lang/Long;
.field private final mTokenType:Ljava/lang/String;
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
.registers 4
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/ClientCredentialsResponse;->mAccessToken:Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/ClientCredentialsResponse;->mTokenType:Ljava/lang/String;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/ClientCredentialsResponse;->mExpiresIn:Ljava/lang/Long;
return-void
.end method
.method public getAccessToken()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/ClientCredentialsResponse;->mAccessToken:Ljava/lang/String;
return-object v0
.end method
.method public getExpiresIn()Ljava/lang/Long;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/ClientCredentialsResponse;->mExpiresIn:Ljava/lang/Long;
return-object v0
.end method
.method public getTokenType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/ClientCredentialsResponse;->mTokenType:Ljava/lang/String;
return-object v0
.end method