.class  Lcom/spotify/mobile/android/spotlets/collection/service/Keymaster;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field public accessToken:Ljava/lang/String;
.field public expiresIn:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;I)V
.registers 3
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/service/Keymaster;->accessToken:Ljava/lang/String;
iput p2, p0, Lcom/spotify/mobile/android/spotlets/collection/service/Keymaster;->expiresIn:I
return-void
.end method