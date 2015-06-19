.class  Lcom/spotify/mobile/android/spotlets/collection/service/CreatePlaylist;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field public itemUri:Ljava/lang/String;
.field public name:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/service/CreatePlaylist;->name:Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/collection/service/CreatePlaylist;->itemUri:Ljava/lang/String;
return-void
.end method