.class public final Lcom/spotify/bouncer/proto/SocialReaction$Builder;
.super Lcom/squareup/wire/g;
.source "SourceFile"
.field public id:Ljava/lang/String;
.field public likes:Lcom/spotify/bouncer/proto/UserList;
.field public reshares:Lcom/spotify/bouncer/proto/UserList;
.field public streams:Lcom/spotify/bouncer/proto/UserList;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/squareup/wire/g;-><init>()V
return-void
.end method
.method public constructor <init>(Lcom/spotify/bouncer/proto/SocialReaction;)V
.registers 3
invoke-direct {p0, p1}, Lcom/squareup/wire/g;-><init>(Lcom/squareup/wire/Message;)V
if-nez p1, :cond_6
:goto_5
return-void
:cond_6
iget-object v0, p1, Lcom/spotify/bouncer/proto/SocialReaction;->id:Ljava/lang/String;
iput-object v0, p0, Lcom/spotify/bouncer/proto/SocialReaction$Builder;->id:Ljava/lang/String;
iget-object v0, p1, Lcom/spotify/bouncer/proto/SocialReaction;->likes:Lcom/spotify/bouncer/proto/UserList;
iput-object v0, p0, Lcom/spotify/bouncer/proto/SocialReaction$Builder;->likes:Lcom/spotify/bouncer/proto/UserList;
iget-object v0, p1, Lcom/spotify/bouncer/proto/SocialReaction;->streams:Lcom/spotify/bouncer/proto/UserList;
iput-object v0, p0, Lcom/spotify/bouncer/proto/SocialReaction$Builder;->streams:Lcom/spotify/bouncer/proto/UserList;
iget-object v0, p1, Lcom/spotify/bouncer/proto/SocialReaction;->reshares:Lcom/spotify/bouncer/proto/UserList;
iput-object v0, p0, Lcom/spotify/bouncer/proto/SocialReaction$Builder;->reshares:Lcom/spotify/bouncer/proto/UserList;
goto :goto_5
.end method
.method public final build()Lcom/spotify/bouncer/proto/SocialReaction;
.registers 3
new-instance v0, Lcom/spotify/bouncer/proto/SocialReaction;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/spotify/bouncer/proto/SocialReaction;-><init>(Lcom/spotify/bouncer/proto/SocialReaction$Builder;B)V
return-object v0
.end method
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
.registers 2
invoke-virtual {p0}, Lcom/spotify/bouncer/proto/SocialReaction$Builder;->build()Lcom/spotify/bouncer/proto/SocialReaction;
move-result-object v0
return-object v0
.end method
.method public final id(Ljava/lang/String;)Lcom/spotify/bouncer/proto/SocialReaction$Builder;
.registers 2
iput-object p1, p0, Lcom/spotify/bouncer/proto/SocialReaction$Builder;->id:Ljava/lang/String;
return-object p0
.end method
.method public final likes(Lcom/spotify/bouncer/proto/UserList;)Lcom/spotify/bouncer/proto/SocialReaction$Builder;
.registers 2
iput-object p1, p0, Lcom/spotify/bouncer/proto/SocialReaction$Builder;->likes:Lcom/spotify/bouncer/proto/UserList;
return-object p0
.end method
.method public final reshares(Lcom/spotify/bouncer/proto/UserList;)Lcom/spotify/bouncer/proto/SocialReaction$Builder;
.registers 2
iput-object p1, p0, Lcom/spotify/bouncer/proto/SocialReaction$Builder;->reshares:Lcom/spotify/bouncer/proto/UserList;
return-object p0
.end method
.method public final streams(Lcom/spotify/bouncer/proto/UserList;)Lcom/spotify/bouncer/proto/SocialReaction$Builder;
.registers 2
iput-object p1, p0, Lcom/spotify/bouncer/proto/SocialReaction$Builder;->streams:Lcom/spotify/bouncer/proto/UserList;
return-object p0
.end method