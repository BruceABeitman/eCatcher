.class public Lcom/spotify/music/spotlets/situationalcontent/model/ContextRecognitionModel;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field private final mContextModels:[Lcom/spotify/music/spotlets/situationalcontent/model/ContextModel;
.field private final mStatus:Ljava/lang/String;
.method private constructor <init>(Ljava/lang/String;[Lcom/spotify/music/spotlets/situationalcontent/model/ContextModel;)V
.registers 3
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextRecognitionModel;->mStatus:Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextRecognitionModel;->mContextModels:[Lcom/spotify/music/spotlets/situationalcontent/model/ContextModel;
return-void
.end method
.method public getContextModels()[Lcom/spotify/music/spotlets/situationalcontent/model/ContextModel;
.registers 2
iget-object v0, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextRecognitionModel;->mContextModels:[Lcom/spotify/music/spotlets/situationalcontent/model/ContextModel;
return-object v0
.end method
.method public getStatus()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextRecognitionModel;->mStatus:Ljava/lang/String;
return-object v0
.end method