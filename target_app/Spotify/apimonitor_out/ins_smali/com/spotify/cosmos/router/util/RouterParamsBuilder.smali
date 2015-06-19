.class public Lcom/spotify/cosmos/router/util/RouterParamsBuilder;
.super Ljava/lang/Object;
.source "SourceFile"
.field private mRouterParams:Lcom/spotify/cosmos/router/RouterParams;
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/spotify/cosmos/router/RouterParams;
invoke-direct {v0}, Lcom/spotify/cosmos/router/RouterParams;-><init>()V
iput-object v0, p0, Lcom/spotify/cosmos/router/util/RouterParamsBuilder;->mRouterParams:Lcom/spotify/cosmos/router/RouterParams;
return-void
.end method
.method public static create()Lcom/spotify/cosmos/router/util/RouterParamsBuilder;
.registers 1
new-instance v0, Lcom/spotify/cosmos/router/util/RouterParamsBuilder;
invoke-direct {v0}, Lcom/spotify/cosmos/router/util/RouterParamsBuilder;-><init>()V
return-object v0
.end method
.method public build()Lcom/spotify/cosmos/router/RouterParams;
.registers 2
iget-object v0, p0, Lcom/spotify/cosmos/router/util/RouterParamsBuilder;->mRouterParams:Lcom/spotify/cosmos/router/RouterParams;
return-object v0
.end method
.method public cacheIdentifier(Ljava/lang/String;)Lcom/spotify/cosmos/router/util/RouterParamsBuilder;
.registers 3
iget-object v0, p0, Lcom/spotify/cosmos/router/util/RouterParamsBuilder;->mRouterParams:Lcom/spotify/cosmos/router/RouterParams;
iput-object p1, v0, Lcom/spotify/cosmos/router/RouterParams;->cacheIdentifier:Ljava/lang/String;
return-object p0
.end method
.method public disableEcho(Z)Lcom/spotify/cosmos/router/util/RouterParamsBuilder;
.registers 3
iget-object v0, p0, Lcom/spotify/cosmos/router/util/RouterParamsBuilder;->mRouterParams:Lcom/spotify/cosmos/router/RouterParams;
iput-boolean p1, v0, Lcom/spotify/cosmos/router/RouterParams;->disableEcho:Z
return-object p0
.end method
.method public disableGzip(Z)Lcom/spotify/cosmos/router/util/RouterParamsBuilder;
.registers 3
iget-object v0, p0, Lcom/spotify/cosmos/router/util/RouterParamsBuilder;->mRouterParams:Lcom/spotify/cosmos/router/RouterParams;
iput-boolean p1, v0, Lcom/spotify/cosmos/router/RouterParams;->disableGzip:Z
return-object p0
.end method
.method public disableMessages(Z)Lcom/spotify/cosmos/router/util/RouterParamsBuilder;
.registers 3
iget-object v0, p0, Lcom/spotify/cosmos/router/util/RouterParamsBuilder;->mRouterParams:Lcom/spotify/cosmos/router/RouterParams;
iput-boolean p1, v0, Lcom/spotify/cosmos/router/RouterParams;->disableMessages:Z
return-object p0
.end method
.method public session(Ljava/lang/String;)Lcom/spotify/cosmos/router/util/RouterParamsBuilder;
.registers 3
iget-object v0, p0, Lcom/spotify/cosmos/router/util/RouterParamsBuilder;->mRouterParams:Lcom/spotify/cosmos/router/RouterParams;
iput-object p1, v0, Lcom/spotify/cosmos/router/RouterParams;->session:Ljava/lang/String;
return-object p0
.end method
.method public version(Ljava/lang/String;)Lcom/spotify/cosmos/router/util/RouterParamsBuilder;
.registers 3
iget-object v0, p0, Lcom/spotify/cosmos/router/util/RouterParamsBuilder;->mRouterParams:Lcom/spotify/cosmos/router/RouterParams;
iput-object p1, v0, Lcom/spotify/cosmos/router/RouterParams;->version:Ljava/lang/String;
return-object p0
.end method